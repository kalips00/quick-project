import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


Item {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    property alias currentIndex: currentIdx.text

    // ========================================================================
    // Item signals
    // ========================================================================

    signal addClicked()
    signal removeClicked()
    signal headerClicked()

    // ========================================================================
    // Item children
    // ========================================================================

    GridLayout {
        anchors.centerIn: parent
        columns: 2
        columnSpacing: 30
        rowSpacing: 30

        Button {
            text: "Add item"

            onClicked: root.addClicked();
        }
        Button {
            text: "Remove item"

            onClicked: root.removeClicked();
        }
        Button {
            text: "Header"

            onClicked: root.headerClicked();
        }
        Text {
            id: currentIdx
            Layout.alignment: Qt.AlignCenter
            text: "Current Index"
            font.pixelSize: 15
        }
    }
}
