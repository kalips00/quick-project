import QtQuick 2.15


Rectangle {
    id: root
    width: 250
    height: 250
    color: "blue"


    // ========================================================================
    // Item properties
    // ========================================================================

    //! @brief The text display at the bottom of the rectangle
    property alias text: myText.text

    // ========================================================================
    // Item children
    // ========================================================================

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
        id: myText
        x: 25
        y: 200
        text: "My super text!"
        font.pixelSize: 25
        color: "pink"
    }
}

