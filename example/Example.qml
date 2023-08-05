import QtQuick

import quickProject

Item {
    id: root

    Rectangle {
        anchors.centerIn: parent
        width: 250
        height: 250
        color: Constants.color.grey8
        radius: 90

        Icon {
            anchors.centerIn: parent
            source: Icons.alarm
            color: Constants.color.grey1
            size: 130
        }
    }

}
