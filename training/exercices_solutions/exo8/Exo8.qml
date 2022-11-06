import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root

    // ========================================================================
    // Item children
    // ========================================================================

    // Header
    Header {
        id: header
        anchors {
            left: parent.left
            right: parent.right
        }

        model: contactModel
    }

    // Content
    Content {
        id: content
        anchors {
            left: parent.left
            right: parent.right
            top: header.bottom
            bottom: parent.bottom
        }
        contact: contactModel.get(header.currentIndex)
    }

    // SidePanel
    SidePanel {
        id: sidePanel
        anchors {
            top: header.bottom
            bottom: parent.bottom
        }
    }

    // list model
    ListModel {
        id: contactModel

        ListElement { rFirstName: "Bernard"; rLastName: "Lermite"; rPhone: "0601010101"; rMail: "bernard.lermite@qml.com" }
        ListElement { rFirstName: "Marc"; rLastName: "Assin"; rPhone: "0602020202"; rMail: "marc.assin@qml.com" }
        ListElement { rFirstName: "Jean"; rLastName: "Serien"; rPhone: "0603010101"; rMail: "jean.serien@qml.com" }
        ListElement { rFirstName: "Alain"; rLastName: "Provist"; rPhone: "0604010101"; rMail: "alain.provist@qml.com" }
        ListElement { rFirstName: "John"; rLastName: "Duff"; rPhone: "0605010101"; rMail: "john.duff@qml.com" }
        ListElement { rFirstName: "Juda"; rLastName: "Nana"; rPhone: "0606010101"; rMail: "juda.nana@qml.com" }
        ListElement { rFirstName: "Maude"; rLastName: "Zarella"; rPhone: "0607010101"; rMail: "maude.zarella@qml.com" }
        ListElement { rFirstName: "Lara"; rLastName: "Leuse"; rPhone: "0608010101"; rMail: "lara.leuse@qml.com" }
        ListElement { rFirstName: "Camille"; rLastName: "Honnete"; rPhone: "0609010101"; rMail: "camille.honnete@qml.com" }
        ListElement { rFirstName: "Charles"; rLastName: "Latant"; rPhone: "0610010101"; rMail: "charles.latant@qml.com" }
        ListElement { rFirstName: "Maude"; rLastName: "Zarella"; rPhone: "0607010101"; rMail: "maude.zarella@qml.com" }
        ListElement { rFirstName: "Lara"; rLastName: "Leuse"; rPhone: "0608010101"; rMail: "lara.leuse@qml.com" }
        ListElement { rFirstName: "Camille"; rLastName: "Honnete"; rPhone: "0609010101"; rMail: "camille.honnete@qml.com" }
        ListElement { rFirstName: "Charles"; rLastName: "Latant"; rPhone: "0610010101"; rMail: "charles.latant@qml.com" }
        ListElement { rFirstName: "Maude"; rLastName: "Zarella"; rPhone: "0607010101"; rMail: "maude.zarella@qml.com" }
        ListElement { rFirstName: "Lara"; rLastName: "Leuse"; rPhone: "0608010101"; rMail: "lara.leuse@qml.com" }
        ListElement { rFirstName: "Camille"; rLastName: "Honnete"; rPhone: "0609010101"; rMail: "camille.honnete@qml.com" }
        ListElement { rFirstName: "Charles"; rLastName: "Latant"; rPhone: "0610010101"; rMail: "charles.latant@qml.com" }
    }
}
