import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root

    width: 150
    height: 60
    border.width: 3
    radius: height / 2

    // ========================================================================
    // Item children
    // ========================================================================


    Text {
        anchors.centerIn: parent
        text: "Button V1"
        font.pixelSize: 15
        color: "white"
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }


    // ========================================================================
    // States & transitions
    // ========================================================================

    state: "default"
    states: [
        State {
            name: "default"
            when: !mouseArea.pressed
            PropertyChanges {
                target: root
                color: "blue"
                border.color: "green"
                scale: 1.0
            }
        },
        State {
            name: "pressed"
            when: mouseArea.pressed
            PropertyChanges {
                target: root
                color: "lightblue"
                border.color: "orange"
                scale: 0.9
            }

        }
    ]

    transitions: Transition {
        ParallelAnimation {
            ColorAnimation { duration: 100 }
            PropertyAnimation { property: "scale"; duration: 100 }
        }
    }
}
