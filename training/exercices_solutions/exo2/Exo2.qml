import QtQuick 2.15

Item {
    id: root


    MyRectangle {
        id: myRect
        anchors.centerIn: parent

    }

    MouseArea {
        anchors.fill: myRect

        onClicked: {
            // be carrefull we break the binding
            myRect.text = "I clicked on it!"
        }
    }
}
