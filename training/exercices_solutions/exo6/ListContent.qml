import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


// ListContent.qml
ListView {
    id: root

    // ========================================================================
    // Item parent properties
    // ========================================================================

    spacing: 15
    delegate: delegateComp
    keyNavigationEnabled: true

    // we redefine the default scrollbar
    ScrollBar.vertical: ScrollBar {
        // No background to display
        background: null
        visible: height < parent.height

        // The handle
        contentItem: Rectangle {
            implicitWidth: 3
            color: "red"
            radius: width / 2
        }
    }
    // ========================================================================
    // Item children
    // ========================================================================

    Component {
        id: delegateComp

        Rectangle {
            width: root.width
            height: 50
            color: root.currentIndex === index ? "blue" : "grey"
            radius: 15

            Text {
                anchors.centerIn: parent
                text: rName
                font {
                    pixelSize: 15
                    family: "Segoe UI"
                }
                color: "white"
            }

            MouseArea {
                anchors.fill: parent

                onClicked: root.currentIndex = index;
            }
        }
    }
}
