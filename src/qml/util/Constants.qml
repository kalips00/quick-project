pragma Singleton

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls.Material 2.15

/**
 * @brief Singleton containing all the constants (colors, sizes, enums, functions, etc)
 */
QtObject {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    readonly property QtObject color: QtObject {


        property int theme: Constants.Theme.LIGHT

        readonly property color primary: Material.color(Material.Indigo, Material.Shade400)
        readonly property color primaryHovered: Material.color(Material.Indigo, Material.Shade600)
        readonly property color secondary: Material.color(Material.Purple, Material.Shade400)

        readonly property color success: Material.color(Material.Green, Material.Shade400)
        readonly property color warning: Material.color(Material.Orange, Material.Shade400)
        readonly property color danger: Material.color(Material.DeepOrange, Material.Shade600)

        readonly property color grey0: Material.color(Material.Grey, themeShades[theme][0])
        readonly property color grey1: Material.color(Material.Grey, themeShades[theme][1])
        readonly property color grey2: Material.color(Material.Grey, themeShades[theme][2])
        readonly property color grey3: Material.color(Material.Grey, themeShades[theme][3])
        readonly property color grey4: Material.color(Material.Grey, themeShades[theme][4])

        readonly property color grey5: Material.color(Material.Grey, themeShades[theme][5])
        readonly property color grey6: Material.color(Material.Grey, themeShades[theme][6])
        readonly property color grey7: Material.color(Material.Grey, themeShades[theme][7])
        readonly property color grey8: Material.color(Material.Grey, themeShades[theme][8])
        readonly property color grey9: Material.color(Material.Grey, themeShades[theme][9])

        readonly property var properties: ["primary","secondary","success","warning", "danger", "grey0", "grey1", "grey2", "grey3", "grey4", "grey5",
                                        "grey6", "grey7", "grey8", "grey9"]

        readonly property var themeShades: [
            [Material.Shade900,Material.Shade800,Material.Shade700,Material.Shade600,Material.Shade500,Material.Shade400,Material.Shade300,Material.Shade200,Material.Shade100,Material.Shade50],
            [Material.Shade400,Material.Shade300,Material.Shade200,Material.Shade100,Material.Shade50,Material.Shade900,Material.Shade800,Material.Shade700,Material.Shade600,Material.Shade500]
        ]

    }

    readonly property QtObject font: QtObject {

        readonly property string family: "Segoe UI"
        readonly property int sizeLegend: 12
        readonly property int sizeText: 15
        readonly property int sizeH3: 24
        readonly property int sizeH2: 32
        readonly property int sizeH1: 56
    }

    readonly property QtObject size: QtObject {

        readonly property int radius: root.mm(1)
        readonly property int xxxs: root.mm(0.5)
        readonly property int xxs: root.mm(4)
        readonly property int xs: root.mm(6)
        readonly property int s: root.mm(8)
        readonly property int m: root.mm(12)
        readonly property int l: root.mm(16)
        readonly property int xl: root.mm(24)
        readonly property int xxl: root.mm(32)
    }

    readonly property QtObject spacing: QtObject {

        readonly property int xxs: root.mm(2)
        readonly property int xs: root.mm(4)
        readonly property int s: root.mm(8)
        readonly property int m: root.mm(16)
        readonly property int l: root.mm(24)
        readonly property int xl: root.mm(32)
        readonly property int xxl: root.mm(48)
    }

    readonly property QtObject motion: QtObject {

        readonly property int slow: 200
        readonly property int medium: 100
        readonly property int fast: 50
    }

    // ========================================================================
    // Item enums
    // ========================================================================

    enum Theme {
        LIGHT,
        DARK
    }

    // ========================================================================
    // Item functions
    // ========================================================================

    //! @brief Transform milimeters to pixel depending on the current screen density
    //  Used to have the same element size on different screens
    function mm(mm)
    {
        return Screen.pixelDensity * mm
    }

    // ========================================================================
    // Item debug functions
    // ========================================================================

    //! @brief Convenience function to trace all the properties of an object
    function log(object)
    {
        if(object !== null && object !== undefined)
        {
            let keys = Object.keys(object);
            for(let i=0; i<keys.length; i++)
            {
                let key = keys[i];
                // prints all properties, signals, functions from object but not properties signals
                if(key.search("Changed") === -1)
                {
                    console.log(key + ' : ' + object[key]);
                }
            }
        }
        else
        {
            console.log("[Constants] log function: Object is null or undefined. {object : "+object +"}");
        }
    }
}
