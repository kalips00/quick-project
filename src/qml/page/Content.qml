import QtQuick 2.15
import QtQuick.Controls 2.15

import quickProject 1.0
import "../component"

/**
 * @brief Manage all the pages (reloaded file, color, icon pages)
 */
SwipeView {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    //! @brief The path of the file to reload
    property alias fileToReload: reloadPage.fileToReload

    //! @brief The reload file name
    property alias fileNameToReload: reloadPage.fileNameToReload

    // ========================================================================
    // Item parent properties
    // ========================================================================

    clip: true

    // ========================================================================
    // Item functions
    // ========================================================================

    //! @brief Reload the file
    function reload()
    {
        reloadPage.reload(reloadPage.fileContent);
    }

    // ========================================================================
    // Item signals
    // ========================================================================

    //! @brief Triggered when a the user want to get dev info (e.g: color code or icon code)
    signal copyRequested(string text)

    //! @brief Triggered when the file to reload has been reloaded
    signal fileReloaded();

    // ========================================================================
    // Item children
    // ========================================================================

    ReloadPage {
        id: reloadPage

        onReloaded: root.fileReloaded();
    }

    ColorPage {
        onCopyRequested: text => root.copyRequested(text);
    }

    IconPage {
        onCopyRequested: text => root.copyRequested(text);
    }

}
