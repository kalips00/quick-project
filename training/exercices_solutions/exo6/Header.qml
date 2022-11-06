import QtQuick 2.15


/**
 * @brief Some component definition
 */
Rectangle {
    id: root
    height: 100
    color: "blue"

    // ========================================================================
    // Item properties
    // ========================================================================

    //! @brief The text display at the bottom of the rectangle
    property alias title: title.text

    // ========================================================================
    // Item children
    // ========================================================================

    Text {
        id: title
        anchors {
            left: parent.left
            leftMargin: 25
            verticalCenter: parent.verticalCenter
        }

        color: "white"
        font.pixelSize: 25
    }
}

