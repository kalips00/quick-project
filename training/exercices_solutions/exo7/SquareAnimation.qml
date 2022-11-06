import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 50
    height: 50

    // ========================================================================
    // Item children
    // ========================================================================

    Rectangle {
        id: rectToAnim
        width: 50
        height: 50
        color: "orange"

        MouseArea {
            anchors.fill: parent

            onClicked: anim.start();
        }
    }

    SequentialAnimation {
        id: anim

        ParallelAnimation {
            XAnimator {target: rectToAnim; from: 0; to: 200; duration: 400}
            ColorAnimation {target: rectToAnim; property: "color"; to: "black"; duration: 400}
            ScaleAnimator {target: rectToAnim; from: 1; to: 2; duration: 400}
        }
        PauseAnimation { duration: 1000}
        ParallelAnimation {
            PropertyAnimation {target: rectToAnim; property: "radius"; to: root.width/2; duration: 400}
            ColorAnimation {target: rectToAnim; property: "color"; to: "purple"; duration: 400}
            YAnimator {target: rectToAnim; from: 0; to: 100; duration: 400}
        }
        PauseAnimation { duration: 1000}
        ParallelAnimation {
            PropertyAnimation {target: rectToAnim; property: "radius"; to: 0; duration: 400}
            ColorAnimation {target: rectToAnim; property: "color"; to: "green"; duration: 400}
            XAnimator {target: rectToAnim; from: 200; to: 0; duration: 400}
        }
    }
}
