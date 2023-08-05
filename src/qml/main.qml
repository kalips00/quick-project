import QtQuick
import QtQuick.Window
import Qt.labs.settings

import quickProject
import "component"
import "page"
import "menu"

Window {
    id: root

    // ========================================================================
    // Item parent properties
    // ========================================================================

    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Reloader")
    color: Constants.color.grey6

    // ========================================================================
    // Item slots
    // ========================================================================

    Component.onCompleted: Constants.color.theme = settings.theme;

    // ========================================================================
    // Item children
    // ========================================================================

    // Central content (swipe view) containing all the content pages
    Content {
        id: content
        anchors.fill: parent
        interactive: !menu.hided
        focus: true

        onCopyRequested: text => root.copy(text);
        onFileReloaded: {
            menu.canReload = true;
            toast.text = "File reloaded !";
            toast.open();
        }
    }

    // menu containing all the interface buttons
    Menu {
        id: menu
        anchors.fill: parent
        canGoBack: content.currentIndex > 0
        canGoForward: content.currentIndex < (content.count-1)
        fileNameToReload: content.fileNameToReload
        contentCurrentIndex: content.currentIndex

        onFileSelected: filePath => content.fileToReload = filePath;
        onHideRequested: content.currentIndex = 0;
        onPreviousButtonClicked: content.currentIndex--;
        onNextButtonClicked: content.currentIndex++;
        onReloadButtonClicked: content.reload();
        onThemeChanged: settings.theme = Constants.color.theme
    }

    // copy/paste feature
    // It's just a trick allowing to copy text into the clipboard
    function copy(text)
    {
        helper.text = text;
        helper.selectAll();
        helper.copy();
        toast.text = "Element copied !";
        toast.open();
    }
    TextInput {id: helper;width:0;height: 0;opacity: 0;}


    // toast used for the copy/paste feature but also to inform the user
    // when the file to reload has been reloaded
    Toast {
        id: toast
        anchors {
            horizontalCenter: parent.horizontalCenter
            margins: Constants.spacing.m
        }
    }


    // settings management, allows to save some user preferences
    Settings {
        id: settings

        // allows to save the last file loaded for the next launch
        property alias fileToReloadPath: content.fileToReload
        property int theme
    }
}
