import QtQuick
import QtQuick.Controls

import quickProject
import "../component"

/**
 * @brief Information popup to present to the user relevant things
 */
// NOTE Not used for now, may be later
Dialog {
    id: root

    modal: true
    closePolicy: Popup.CloseOnPressOutside

    header: null
    background: Rectangle {
        color: Constants.color.grey5
        radius: Constants.size.radius
    }
    contentItem: Item {
        implicitWidth: Constants.mm(80)
        implicitHeight: Constants.mm(100)
    }

    Overlay.modal: Rectangle {
            color: Constants.color.theme === Constants.Theme.LIGHT ? "#B3000000" : "#4DFFFFFF"
        }
}
