import QtQuick 2.15

import quickProject 1.0
import "../component"

/**
 * @brief Handle all the top right buttons (reload / upload / more buttons)
 */
Row {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    //! @brief Access to the reload sub button
    property alias reloadButtonEnabled: reloadButton.enabled

    // ========================================================================
    // Item parent properties
    // ========================================================================

    spacing: Constants.spacing.xxs

    // ========================================================================
    // Item signals
    // ========================================================================

    // button clicked signals
    signal reloadButtonClicked()
    signal fileButtonClicked()
    signal hideButtonClicked()
    signal infoButtonClicked()
    signal themeButtonClicked()

    // ========================================================================
    // Item children
    // ========================================================================

    MenuButton {
        id: reloadButton
        iconName: Icons.flash_on
        text: "reload"
        enabled: false

        onClicked: root.reloadButtonClicked();
    }

    MenuButton {
        id: fileButton
        iconName: Icons.file_upload
        text: "choose a file"
        // allowing to see label under more menu
        z: 1

        onClicked: root.fileButtonClicked();
    }

    Item {
        width: moreButton.width
        height: moreMenu.height

        MoreMenu {
            id: moreMenu
            anchors.horizontalCenter: moreButton.horizontalCenter
            openned: moreButton.checked

            onThemeRequested: root.themeButtonClicked();
            onHideRequested: {
                moreButton.checked = false;
                root.hideButtonClicked();
            }
            // NOTE not used for now
            // onInfoRequested: {
            //     moreButton.checked = false;
            //     root.infoButtonClicked();
            // }
        }

        MenuButton {
            id: moreButton
            iconName: Icons.menu
            checkable: true
            text: "more"
            labelVisible: moreButton.hovered && Boolean(moreButton.text) && !moreButton.checked ? 1.0 : 0.0
        }
    }
}
