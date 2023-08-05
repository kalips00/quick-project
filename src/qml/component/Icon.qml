import QtQuick

import quickProject


/**
 * @brief Text that display on icon
 */
Text {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    //! @brief The source of the icon (in fact the text because it uses font icons)
    property alias source: root.text
    //! @brief The size of the icon (in fact the pixel size because it uses font icons)
    property alias size: root.font.pixelSize

    // ========================================================================
    // Item parent properties
    // ========================================================================

    font.family: Icons.iconLoader.name

}
