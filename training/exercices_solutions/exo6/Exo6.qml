import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root

    // ========================================================================
    // Item children
    // ========================================================================

    // Header.qml
    Header {
        id: header
        anchors {
            left: parent.left
            right: parent.right
        }
    }

    // Content.qml
    Content {
        anchors {
            top: header.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            margins: 35
        }
        onHeaderClicked: header.title = "Current index n°" + index + " !!";
        model: myModel
    }

    // model
    ListModel {
        id: myModel
        ListElement {rName:"Element number 1"}
        ListElement {rName:"Element number 2"}
        ListElement {rName:"Element number 3"}
        ListElement {rName:"Element number 4"}
        ListElement {rName:"Element number 5"}
    }
}
