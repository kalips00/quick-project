import QtQuick

import quickProject
import "../component"


/**
 * @brief Empty panel used when no information is available
 */
Column {
    id: root

    spacing: Constants.spacing.xs

    // ========================================================================
    // Item signals
    // ========================================================================

    //! @brief Triggered when the file button is clicked (under illustration)
    signal fileButtonClicked()

    // ========================================================================
    // Item children
    // ========================================================================

    BasicText {
        anchors.horizontalCenter: parent.horizontalCenter
        text: "No loaded file here :)"
        font {
            capitalization: Font.AllUppercase
            pixelSize: Constants.font.sizeH2
            family: "Segoe UI Light"
        }
    }

    Image {
        anchors.horizontalCenter: parent.horizontalCenter
        source: Icons.empty_dark
        sourceSize {
            width: Constants.size.xxl*2
            height: Constants.size.xxl*2
        }
    }

    BasicButton {
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Choose a file"

        onClicked: root.fileButtonClicked();
    }
}
