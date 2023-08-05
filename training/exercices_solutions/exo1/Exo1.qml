import QtQuick


import quickProject

Item {
    id: root


    Rectangle {
        anchors.centerIn: parent
        width: 250
        height: 250
        color: "yellow"

        Rectangle {
            width: 100
            height: 100
            radius: 25

            Rectangle {
                width: 50
                height: 50
                color: "red"
                radius: width / 2
            }
        }

        Text {
            x: 25
            y: 200
            text: "My super text!"
            font.pixelSize: 25
            color: "pink"
        }

        Icon  {
            anchors.centerIn: parent
            source: Icons.attachment
            size: Constants.font.sizeH1
        }
    }
}
