import QtQuick 2.15

import quickProject 1.0

Rectangle {
       id: root
       color: Constants.color.grey8

       Rectangle {
           anchors.centerIn: parent
           width: 250
           height: 250
           radius: 50
           color: Constants.color.success

           Icon {
               anchors.centerIn: parent
               source: Icons.access_alarm
               size: 100
           }
       }
}
