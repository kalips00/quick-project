import QtQuick

import quickProject
import "../component"

/**
 * @brief Content page managing the colors presentation
 */
Flickable {
    id: root

    contentHeight: mainLayout.height
    contentWidth: width
    flickableDirection: Flickable.VerticalFlick
    interactive: contentHeight > height
    leftMargin: Constants.spacing.xs
    rightMargin: Constants.spacing.m
    topMargin: Constants.spacing.m
    bottomMargin: Constants.spacing.m

    // ========================================================================
    // Item signals
    // ========================================================================

    //! @brief Triggered when the user click on a color button
    signal copyRequested(string text)

    // ========================================================================
    // Item children
    // ========================================================================

    // icons grid flow
    Flow {
        id: mainLayout
        padding: Constants.spacing.l
        width: root.width
        spacing: 25

        Repeater {
            model: Constants.color.properties
            delegate: colorComponent
        }
    }

    Component {
        id: colorComponent

        Rectangle {
            width: Constants.size.xxl
            height: Constants.size.xxl
            radius: Constants.size.radius
            scale: ma.pressed ? 0.9 : 1.0
            border.color: Constants.color.grey1
            color: Constants.color[Constants.color.properties[index]]

            Behavior on scale { ScaleAnimator {duration: Constants.motion.fast}}

            Rectangle {
                id: labelBackground
                anchors {
                    left: parent.left
                    right: parent.right
                    bottom: parent.bottom
                }
                height: Constants.size.s
                color: Constants.color.grey0
                radius: Constants.size.radius
                opacity: 0.36
            }

            BasicText {
                text: Constants.color.properties[index].toUpperCase()
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: labelBackground.verticalCenter
                }
                font.bold: true
                color: Constants.color.grey6
            }

            MouseArea {
                id: ma
                anchors.fill: parent
                onClicked: root.copyRequested("Constants.color."+Constants.color.properties[index]);
            }
        }

    }

    // It's just a trick allowing to copy text into the clipboard
    function copy(text) {helper.text = "Constants.color."+text;helper.selectAll();helper.copy();}
    TextInput {id: helper;width:0;height: 0;opacity: 0;}
}
