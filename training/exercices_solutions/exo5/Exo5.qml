import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root


    Flickable {
        anchors {
            fill: parent
            topMargin: 120
            margins: 80
        }
        contentWidth: width
        contentHeight: flow.height
        clip: true

        // we redefine the default scrollbar
        ScrollBar.vertical: ScrollBar {
            // No background to display
            background: null
            visible: parent.interactive

            // The handle
            contentItem: Rectangle {
                implicitWidth: Constants.mm(1)
                color: Constants.color.grey4
                opacity: 0.7
                radius: width / 2
            }
        }

         Flow {
             id: flow
             width: parent.width
             spacing: 25

             Repeater {
                 model: 1000
                 delegate: Rectangle {
                     width: 75
                     height: 75
                     color: ma.containsMouse ? Constants.color.secondary : Constants.color.primary
                     scale: ma.containsMouse ? 1.1 : 1.0

                     Behavior on color { ColorAnimation {duration: Constants.motion.medium}}
                     Behavior on scale { ScaleAnimator {duration: Constants.motion.medium}}


                     MouseArea {
                         id: ma
                         anchors.fill: parent
                         hoverEnabled: true
                     }
                 }
             }

         }


    }

}
