import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root



    // left red rectangle
    Pane {
        id: redRect
        anchors.centerIn: parent
        width: 350
        height: 300
        padding: 30
        // the pane background color
        // we could also override the background property
        palette.window: "red"

        Rectangle {
            id: rectPink
            width: 100
            height: 100
            color: "pink"
        }

        Rectangle {
            anchors.right: parent.right
            width: 100
            height: 100
            color: "green"
            radius: width / 2
        }

        Rectangle {
            anchors {
                horizontalCenter: rectPink.horizontalCenter
                verticalCenter: rectBlue.verticalCenter
            }
            width: 50
            height: 50
            color: "orange"
        }

        Rectangle {
            id: rectBlue
            anchors {
                right: parent.right
                bottom: parent.bottom
            }

            width: 100
            height: 100
            color: "blue"
            border {
                color: "brown"
                width: 3
            }
        }
    }

    // right orange rectangle
    Rectangle {
        anchors {
            left: redRect.right
            bottom: redRect.top
            // margins used to be able to touch the red rect
            leftMargin: -3
            bottomMargin: -3
        }
        width: 100
        height: 50
        color: "transparent"
        border {
            color: "orange"
            width: 3
        }
        radius: 10
    }




}
