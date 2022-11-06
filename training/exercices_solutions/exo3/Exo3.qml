import QtQuick 2.15
import QtQuick.Controls 2.15


Item {
    id: root

    Column {
        anchors.centerIn: parent
        spacing: 25

        Slider {
            id: widthSlider
            // allows to have the slider always H centered even if the rectangle size change
            anchors.horizontalCenter: parent.horizontalCenter
            from: 50
            to: 800
            value: 250

            // usually we redefine the contentItem property to customize a component
            // but we can also change the palette in some particular cases
            // this way imply to read the source qml file of the component
            palette {
                // left part of the gauge
                dark: "blue"
                // right part of the gauge
                midlight: "blue"
                // handle background
                window: "blue"
                // handle pressed background
                light: "blue"
                // handle border
                mid: "white"
            }
        }

        Slider {
            id: heightSlider
            // allows to have the slider always H centered even if the rectangle size change
            anchors.horizontalCenter: parent.horizontalCenter
            from: 50
            to: 500
            value: 250
        }

        Rectangle {
            id: mainRect
            width: widthSlider.value
            height: heightSlider.value
            color: "blue"
            border {
                color: "black"
                width: 2
            }
        }

        Text {
            // allows to have the text always H centered even if the rectangle size change
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Width: " + mainRect.width
            font.pixelSize: 20
        }
        Text {
            // allows to have the text always H centered even if the rectangle size change
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Height: " + mainRect.height
            font.pixelSize: 20
        }
    }


}
