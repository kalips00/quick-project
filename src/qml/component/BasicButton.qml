import QtQuick 2.15
import QtQuick.Controls 2.15

import quickProject 1.0


/**
 * @brief Basic button containing icon and/or text
 */
RoundButton {
    id: root

    // ========================================================================
    // Item parent properties
    // ========================================================================

    height: Constants.size.m
    horizontalPadding: Constants.size.xs
    scale: root.pressed ? 0.92 : 1.0
    icon {
        color: root.checked ? Constants.color.grey6 : Constants.color.grey1
        width: Constants.size.xxs
    }
    radius: root.width / 2
    opacity: root.enabled ? 1.0 : 0.24
    font {
        family: "Segoe UI"
        pixelSize: Constants.font.sizeText
        capitalization: Font.AllUppercase
    }
    palette.buttonText: Constants.color.grey1

    background: Rectangle {
        color: root.checked ? root.hovered ? Constants.color.grey0 : Constants.color.grey1 :
               root.hovered ? Constants.color.grey5 : Constants.color.grey6
        radius: root.radius
        border {
            width: 2
            color: root.checked ? "transparent" : root.hovered ? Constants.color.grey0 : Constants.color.grey1
        }

        Behavior on color { ColorAnimation { duration: Constants.motion.medium } }
    }

    Behavior on scale { ScaleAnimator { duration: Constants.motion.fast } }
    Behavior on opacity { OpacityAnimator { duration: Constants.motion.slow } }
}
