import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

import quickProject 1.0
import "../component"

/**
 * @brief Menu manager, handle all the menu UI elements
 */
Item {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    //! @brief True when we can go to the previous content page
    property alias canGoBack: previousButton.enabled

    //! @brief True when we can go to the next content page
    property alias canGoForward: nextButton.enabled

    //! @brief True when a file has been selected and so the user can reload it
    property alias canReload: topRightBtn.reloadButtonEnabled

    //! @brief True when the menu interface is hided by the user
    readonly property bool hided: root.opacity === 0.0

    //! @brief The reloaded file name
    property string fileNameToReload

    //! @brief The current content page index
    property int contentCurrentIndex

    // ========================================================================
    // Item signals
    // ========================================================================

    //! @brief Triggered when a new file is selected
    signal fileSelected(string filePath)

    //! @brief Triggered when a file reload is requested
    signal reloadButtonClicked()

    //! @brief Triggered when the user want to go to the previous page
    signal previousButtonClicked()

    //! @brief Triggered when the user want to go to the next page
    signal nextButtonClicked()

    //! @brief Triggered when the user want to hide the menu interface
    signal hideRequested()

    //! @brief Triggered when the user change from dark to light modes and reverse
    signal themeChanged()

    // ========================================================================
    // Item children
    // ========================================================================

    Behavior on opacity { OpacityAnimator { duration: Constants.motion.medium } }

    MouseArea {
        anchors.right: parent.right
        width: Constants.size.s
        height: Constants.size.s

        onDoubleClicked: root.opacity = 1.0;
    }

    Label {
        id: fileName
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: Constants.spacing.xs
        }
        text: root.fileNameToReload
        color: Constants.color.grey1
        font {
            pixelSize: Constants.font.sizeText
            bold: true
            family: "Segoe UI"
        }
        padding: Constants.spacing.xxs
        background: Rectangle {
            radius: height / 2
            color: "transparent"
            border.color: Constants.color.grey1

            MouseArea {
                id: ma
                anchors.fill: parent
                hoverEnabled: true
            }
        }
        opacity: root.contentCurrentIndex !== 0 || !Boolean(text) ? 0.0 :
                                                                   ma.containsMouse ? 1.0 : 0.24


        Behavior on opacity { OpacityAnimator { duration: Constants.motion.medium } }
    }


    TopRightButtons {
        id: topRightBtn
        anchors {
            top: parent.top
            right: parent.right
            margins: Constants.spacing.xs
        }

        onReloadButtonClicked: root.reloadButtonClicked();
        onFileButtonClicked: fileDialog.open();
        onHideButtonClicked: {
            root.opacity = 0.0;
            root.hideRequested();
        }
        onInfoButtonClicked: infoPopup.open();
        onThemeButtonClicked: {
            Constants.color.theme = (Constants.color.theme === Constants.Theme.LIGHT) ? Constants.Theme.DARK : Constants.Theme.LIGHT;
            root.themeChanged();
        }
    }

    MenuButton {
        id: previousButton
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: Constants.spacing.xs
        }
        text: root.contentCurrentIndex === 1 ? "reload" : "colors"
        enabled: false
        iconName: Icons.chevron_left

        onClicked: root.previousButtonClicked();
    }

    MenuButton {
        id: nextButton
        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: Constants.spacing.xs
        }
        text: root.contentCurrentIndex === 0 ? "colors" : "icons"
        iconName: Icons.chevron_right

        onClicked: root.nextButtonClicked();
    }


    // file dialog for hot reload
    FileDialog {
        id: fileDialog
        title: "Please choose a Qml file"
//        folder: shortcuts.desktop
//        selectExisting: true
        nameFilters: [ "Qml files (*.qml)" ]
//        selectFolder: false
//        sidebarVisible: true
        onAccepted: {
            console.log("You chose: " + fileDialog.fileUrl)
            root.fileSelected(fileDialog.selectedFile);
        }
    }


    EmptySection {
        anchors.centerIn: parent
        visible: !Boolean(root.fileNameToReload) && root.contentCurrentIndex === 0

        onFileButtonClicked: fileDialog.open();
    }


    // NOTE for later if needed
//    InfoPopup {
//        id: infoPopup
//        anchors.centerIn: parent
//        title: "Informations"
//    }

}
