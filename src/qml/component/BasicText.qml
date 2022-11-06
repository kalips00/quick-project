import QtQuick 2.15
import QtQuick.Controls 2.15

import quickProject 1.0

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
