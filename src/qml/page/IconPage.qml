import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import quickProject 1.0
import "../component"

/**
 * @brief Content page managing the icons presentation
 */
ColumnLayout {
    id: root

    spacing: Constants.spacing.s

    // ========================================================================
    // Item signals
    // ========================================================================

    //! @brief Triggered when the user click on an icon button
    signal copyRequested(string text)

    // ========================================================================
    // Item private elements
    // ========================================================================

    QtObject {
        id: internal

        //! @brief Array containing all the icons that has been filtered by the text field
        property var filteredIcons:  Icons.properties.filter(function (str) {return str.includes(filterField.text);});
    }

    // ========================================================================
    // Item children
    // ========================================================================

    TextField {
        id: filterField
        Layout.topMargin: Constants.spacing.m
        Layout.alignment: Qt.AlignHCenter
        Layout.preferredWidth: Constants.mm(60)
        Layout.preferredHeight: Constants.size.m

        background: Rectangle {
            color: "transparent"
            radius: Constants.size.radius
            border {
                width: 2
                color: Constants.color.grey1
            }
        }
        font {
            family: "Segoe UI"
            pointSize: Constants.font.sizeText
        }
        color: Constants.color.grey1
    }


    Flickable {
        Layout.leftMargin: Constants.spacing.xl
        Layout.rightMargin: Constants.spacing.m
        Layout.bottomMargin: Constants.spacing.xs
        Layout.fillWidth: true
        Layout.fillHeight: true
        contentHeight: mainLayout.height
        contentWidth: width
        flickableDirection: Flickable.VerticalFlick
        interactive: contentHeight > height
        clip: true

        // icons grid flow
        Flow {
            id: mainLayout
            width: root.width * 0.9
            topPadding: Constants.spacing.s
            spacing: Constants.spacing.s

            Repeater {
                id: iconRepeater
                model: internal.filteredIcons

                delegate: iconComponent
            }
        }
    }


    Component {
        id: iconComponent

        MouseArea {
            width: col.width
            height: col.height
            scale: pressed ? 0.9 : 1.0

            Behavior on scale { ScaleAnimator {duration: Constants.motion.fast}}

            onClicked: root.copyRequested("Icons."+internal.filteredIcons[index]);

            Column {
                id: col
                spacing: Constants.spacing.xxs

                Icon {
                    id: icon
                    source: Icons[internal.filteredIcons[index]]
                    size: Constants.size.s
                    color: Constants.color.grey1
                }
                BasicText {
                    anchors.horizontalCenter: icon.horizontalCenter
                    width: icon.width * 1.8
                    text: internal.filteredIcons[index]
                    font {
                        pixelSize: Constants.font.sizeLegend
                    }
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }
    }


}


