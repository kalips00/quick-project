import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {
    id: root


    // left red rectangle
    Rectangle {
        id: redRect
        anchors.centerIn: parent
        width: 350
        height: 300
        color: "red"

        GridLayout {
            anchors {
                fill: parent
                margins: 10
            }
            columns: 2
            // not necessary
            // rows: 2

            Rectangle {
                Layout.preferredWidth: 100
                Layout.preferredHeight: 100
                Layout.alignment: Qt.AlignHCenter
                color: "pink"
            }

            Rectangle {
                Layout.preferredWidth: 100
                Layout.preferredHeight: 100
                Layout.alignment: Qt.AlignHCenter
                color: "green"
                radius: width / 2
            }

            Rectangle {
                Layout.preferredWidth: 50
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignCenter
                color: "orange"
            }

            Rectangle {
                Layout.preferredWidth: 100
                Layout.preferredHeight: 100
                Layout.alignment: Qt.AlignHCenter
                color: "blue"
                border {
                    color: "brown"
                    width: 3
                }
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
