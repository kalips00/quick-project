import QtQuick 2.15

import quickProject 1.0

/**
 * @brief Basic temporary message panel, display at the bottom of the screen
 */
Rectangle {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    //! @brief The message
    property string text

    // ========================================================================
    // Item functions
    // ========================================================================

    //! @brief Open the toast and close it automatically after a certain moment
    function open()
    {
        root.state = "opened";
        timer.start();
    }

    // ========================================================================
    // Item parent properties
    // ========================================================================

    width: Constants.mm(35)
    height: Constants.mm(10)
    color: Constants.color.grey1
    radius: Constants.size.radius
    state: "closed"
    states: [
        State {
            name: "opened"
            AnchorChanges {
                target: root
                anchors.bottom: root.parent.bottom
                anchors.top: undefined
            }
        },
        State {
            name: "closed"
            AnchorChanges {
                target: root
                anchors.bottom: undefined
                anchors.top: root.parent.bottom
            }
        }
    ]

    transitions: Transition {
            AnchorAnimation { duration: Constants.motion.slow }
        }

    // ========================================================================
    // Item children
    // ========================================================================

    Timer {
        id: timer
        interval: 1000

        onTriggered: root.state = "closed";
    }


    BasicText {
        anchors.centerIn: parent
        text: root.text
        font.bold: true
        color: Constants.color.grey7
    }


}
