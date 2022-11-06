import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root

    // ========================================================================
    // Item children
    // ========================================================================


    Column {
        anchors.centerIn: parent
        spacing: 50

        // Buttons V1 and V2 aren't based on QtQuick Controls 2
        // but it should be, it's just for the exercice

        // Button animation with states
        ButtonAnimV1 {}

        // Button animation with behavior
        ButtonAnimV2 {}

        // Using animation object
        SquareAnimation {}
    }
}
