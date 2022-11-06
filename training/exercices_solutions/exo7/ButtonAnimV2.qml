import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    width: 150
    height: 60
    radius: height / 2
    color: mouseArea.pressed ? "lightblue" : "blue"
    border {
        width: 3
        color: mouseArea.pressed ? "orange" : "green"
    }
    scale: mouseArea.pressed ? 0.9 : 1.0

    // ========================================================================
    // Item children
    // ========================================================================

    Text {
        anchors.centerIn: parent
        text: "Button V2"
        font.pixelSize: 15
        color: "white"
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    // ========================================================================
    // Item transitions
    // ========================================================================

    Behavior on color { ColorAnimation { duration: 100 }}
    Behavior on border.color { ColorAnimation { duration: 100 }}
    Behavior on scale { ScaleAnimator { duration: 100 }}
}
