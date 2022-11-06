import QtQuick 2.15
import QtQuick.Controls 2.15


// Header
Rectangle {
    id: id
    height: 80
    color: "blue"

    // ========================================================================
    // Item properties
    // ========================================================================

    property alias currentIndex: listView.currentIndex
    property alias model: listView.model

    // ========================================================================
    // Item children
    // ========================================================================

    ListView {
        id: listView
        anchors.verticalCenter: parent.verticalCenter
        height: 60
        width: parent.width
        orientation: ListView.Horizontal
        spacing: 15
        delegate: ContactButton {
            firstName: rFirstName
            lastName: rLastName
            checked: index === 0

            onClicked: listView.currentIndex = index;
        }
    }
}

