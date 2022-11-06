import QtQuick 2.15
import QtQuick.Controls 2.15

// root
Rectangle {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    property bool opened

    // ========================================================================
    // Item parent properties
    // ========================================================================

    // we could also use the anchors properties and AnchorAnimation
    x: root.opened ? 0 : -root.width
    width: 250
    color: "darkblue"

    // ========================================================================
    // Item children
    // ========================================================================

    Rectangle {
        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.right
        }
        width: 70
        height: 70
        radius: width/2
        color: "darkblue"

        Text {
            anchors {
                centerIn: parent
                horizontalCenterOffset: 15
            }
            font.pixelSize: 30
            text:  ">"
            color: "white"
            rotation: root.opened ? 180 : 0

            Behavior on rotation {RotationAnimator {duration: 200; easing.type: Easing.InOutQuad}}
        }

        MouseArea {
            anchors.fill: parent

            onClicked: root.opened = !root.opened;
        }
    }

    Behavior on x {XAnimator {duration: 200; easing.type: Easing.InOutQuad}}
}
