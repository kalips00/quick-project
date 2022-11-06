import QtQuick 2.15
import QtQuick.Controls 2.15

// Content
Rectangle {
    id: content

    color: "orange"

    // ========================================================================
    // Item properties
    // ========================================================================

    property var contact: null

    // ========================================================================
    // Item children
    // ========================================================================

    Column {
        anchors.centerIn: parent
        spacing: 25

        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 250
            height: 250
            radius: width/2
            color: "transparent"
            border {
                width: 3
                color: "black"
            }
        }

        Text {
            id: firstNameText
            anchors.horizontalCenter: parent.horizontalCenter
            text: content.contact.rFirstName
            font.pixelSize: 25
        }
        Text {
            id: lastNameText
            anchors.horizontalCenter: parent.horizontalCenter
            text: content.contact.rLastName
            font.pixelSize: 25
        }
        Text {
            id: phoneNumberText
            anchors.horizontalCenter: parent.horizontalCenter
            text: content.contact.rPhone
            font.pixelSize: 25
        }
        Text {
            id: mailText
            anchors.horizontalCenter: parent.horizontalCenter
            text: content.contact.rMail
            font.pixelSize: 25
        }
    }
}
