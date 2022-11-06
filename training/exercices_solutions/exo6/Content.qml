import QtQuick 2.15
import QtQuick.Layouts 1.15


RowLayout {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    property alias model: listContent.model

    // ========================================================================
    // Item signals
    // ========================================================================

    signal headerClicked(int index);

    // ========================================================================
    // Item children
    // ========================================================================

    // ListContent.qml
    ListContent {
        id: listContent
        Layout.fillWidth: true
        Layout.fillHeight: true
        model: root.model
    }

    // divider
    Rectangle {
        Layout.fillHeight: true
        Layout.topMargin: 100
        Layout.bottomMargin: 100
        Layout.preferredWidth: 5
        color: "grey"
    }

    // Commands.qml
    Commands {
        Layout.fillWidth: true
        Layout.fillHeight: true
        currentIndex: listContent.currentIndex

        onAddClicked: root.model.append({rName:"Element number " + (root.model.count+1)});
        onRemoveClicked: root.model.remove(root.model.count-1,1);
        onHeaderClicked: root.headerClicked(listContent.currentIndex);
    }
}
