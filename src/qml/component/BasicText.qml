import QtQuick
import QtQuick.Controls

import quickProject

/**
 * @brief Basic text with all necessary default properties setted
 */
Text {
    font {
        family: "Segoe UI"
        pixelSize: Constants.font.sizeText
    }
    horizontalAlignment: Text.AlignLeft
    color: Constants.color.grey1
    wrapMode: Text.WordWrap
    elide: Text.ElideRight
    maximumLineCount: 2
}
