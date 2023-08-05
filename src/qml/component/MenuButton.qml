import QtQuick
import QtQuick.Controls

import quickProject


/**
 * @brief Button used for menus
 */
RoundButton {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    //! @brief The name of the icon
    property string iconName

    //! @brief The icon rotation inside the button
    property alias iconRotation: iconIcon.rotation

    //! @brief True if the label is visible on mouse hover
    property alias labelVisible: label.opacity

    //! @brief The position of the label, on left if true
    property bool labelOnLeft

    // ========================================================================
    // Item parent properties
    // ========================================================================

    width: Constants.size.m
    height: Constants.size.m
    scale: root.pressed ? 0.92 : 1.0
    icon {
        color: root.checked ? Constants.color.grey6 : Constants.color.grey1
        width: Constants.mm(5)
    }
    radius: root.width / 2
    opacity: root.enabled ? 1.0 : 0.24
    background: Rectangle {
        color: root.checked ? root.hovered ? Constants.color.grey0 : Constants.color.grey1 :
               root.hovered ? Constants.color.grey5 : Constants.color.grey6
        radius: root.radius
        border {
            width: 1
            color: root.checked ? "transparent" : root.hovered ? Constants.color.grey0 : Constants.color.grey1
        }

        Behavior on color { ColorAnimation { duration: Constants.motion.medium } }
    }

    contentItem: Item {
        // using item allows to have a centered icon in any cases

        Icon {
            id: iconIcon
            anchors.centerIn: parent
            source: root.iconName
            color: root.icon.color
            size: root.icon.width
        }

        // label displayed on left or bottom
        Rectangle {
            id: label
            anchors {
                top: root.labelOnLeft ? undefined : parent.bottom
                horizontalCenter: root.labelOnLeft ? undefined : parent.horizontalCenter

                right: root.labelOnLeft ? parent.left : undefined
                verticalCenter: root.labelOnLeft ? parent.verticalCenter : undefined

                margins: Constants.spacing.xxs
            }
            visible: opacity !== 0.0
            width: labelText.width + Constants.spacing.xs
            height: Constants.mm(5)
            color: Constants.color.grey1
            radius: height / 2
            opacity: root.hovered && Boolean(root.text) ? 1.0 : 0.0

            BasicText {
                id: labelText
                anchors.centerIn: parent
                text: root.text
                font {
                    pixelSize: Constants.font.sizeLegend
                    capitalization: Font.AllUppercase
                    bold: true
                }
                color: Constants.color.grey7
            }
        }
    }

    Behavior on scale { ScaleAnimator { duration: Constants.motion.fast } }
    Behavior on opacity { OpacityAnimator { duration: Constants.motion.slow } }
}
