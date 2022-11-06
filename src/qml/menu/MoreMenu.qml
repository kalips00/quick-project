import QtQuick 2.15

import quickProject 1.0
import "../component"

/**
 * @brief Manage the 2 buttons present into the more menu button (hider menu button and dark/light mode button)
 */
Item {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    //! @brief True if the more menu is open (user can see more menu buttons)
    property bool openned

    // ========================================================================
    // Item signal
    // ========================================================================

    //! @brief Triggered when a menu hide is requested
    signal hideRequested()

    // NOTE not used for now
    //! @brief Triggered when the user want to display the info popup
    //  signal infoRequested()

    //! @brief Triggered when the user want to change the app theme (light or dark)
    signal themeRequested()

    // ========================================================================
    // Item parent properties
    // ========================================================================

    width: Constants.size.m
    height: root.openned ? Constants.mm(37) : Constants.size.m

    Behavior on height { NumberAnimation { duration: Constants.motion.medium } }

    // ========================================================================
    // Item children
    // ========================================================================


    MenuButton {
        id: hideButton
        anchors.horizontalCenter: parent.horizontalCenter
        width: Constants.size.m - Constants.spacing.xxs
        height: Constants.size.m - Constants.spacing.xxs
        y: root.openned ? Constants.mm(14) : Constants.spacing.xxs
        opacity: root.openned ? 1.0 : 0.0
        iconName: Icons.visibility_off
        text: "hide menu"
        labelOnLeft: true

        onClicked: root.hideRequested();

        Behavior on y { YAnimator { duration: Constants.motion.medium } }
        Behavior on opacity { OpacityAnimator { duration: Constants.motion.medium } }
    }

    MenuButton {
        id: darkLightButton
        anchors.horizontalCenter: parent.horizontalCenter
        width: Constants.size.m - Constants.spacing.xxs
        height: Constants.size.m - Constants.spacing.xxs
        y: root.openned ? Constants.mm(26) : Constants.spacing.xxs
        iconName: Constants.color.theme === Constants.Theme.LIGHT ? Icons.brightness_2 : Icons.wb_sunny
        opacity: root.openned ? 1.0 : 0.0
        text: Constants.color.theme === Constants.Theme.LIGHT ? "dark mode" : "light mode"
        labelOnLeft: true

        onClicked: root.themeRequested();

        Behavior on y { YAnimator { duration: Constants.motion.medium } }
        Behavior on opacity { OpacityAnimator { duration: Constants.motion.medium } }
    }

    // NOTE for later if needed
//    MenuButton {
//        id: infoButton
//        anchors.horizontalCenter: parent.horizontalCenter
//        width: Constants.size.m - Constants.spacing.xxs
//        height: Constants.size.m - Constants.spacing.xxs
//        y: root.openned ? Constants.mm(38) : Constants.spacing.xxs
//        iconName: Icons.info
//        opacity: root.openned ? 1.0 : 0.0
//        text: "informations"
//        labelOnLeft: true

//        onClicked: root.infoRequested();

//        Behavior on y { YAnimator { duration: Constants.motion.medium } }
//        Behavior on opacity { OpacityAnimator { duration: Constants.motion.medium } }
//    }


}
