import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

RoundButton {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    property alias firstName: firstName.text
    property alias lastName: lastName.text

    // ========================================================================
    // Item parent properties
    // ========================================================================

    height: 60
    width: 150
    radius: 5
    checkable: true
    autoExclusive: true
    scale: root.pressed ? 0.9 : 1.0

    contentItem: ColumnLayout {
        // by default, the layouts have spacing
        // in that case we don't want it
        spacing: 0

        Text {
            id: firstName
            Layout.fillHeight: true
            Layout.fillWidth: true
            verticalAlignment: Text.AlignVCenter
            leftPadding: 15
            font.pixelSize: 15
            color: root.checked ? "white" : "black"
        }

        Text {
            id: lastName
            Layout.fillHeight: true
            Layout.fillWidth: true
            verticalAlignment: Text.AlignVCenter
            leftPadding: 15
            font.pixelSize: 15
            color: root.checked ? "white" : "black"
        }
    }
}
