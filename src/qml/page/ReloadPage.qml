import QtQuick 2.15

import quickProject 1.0
import "../component"

/**
 * @brief Content page displaying the reloaded file
 */
Item {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    //! @brief The path of the file to reload (empty at launch)
    property string fileToReload

    //! @brief The content of the file to reload (empty at launch)
    readonly property alias fileContent: hotReload.fileContent

    //! @brief The name of the file to reload(empty at launch)
    property string fileNameToReload

    // ========================================================================
    // Item signals
    // ========================================================================

    //! @brief Triggered when the file to reload has been reloaded
    signal reloaded();

    // ========================================================================
    // Item private elements
    // ========================================================================

    QtObject {
        id: internal

        //! @brief The object
        property var currentObject: null
    }

    // ========================================================================
    // Item slots
    // ========================================================================

    // TODO could be done in c++ (HotReload.h)
    // litle treatment to know the name of the new file to reload
    onFileToReloadChanged: {
        const array = fileToReload.split("/");
        const length = array.length;
        root.fileNameToReload = array[length -1];
    }

    // ========================================================================
    // Item functions
    // ========================================================================

    //! @brief Delete current loaded object and create a new one
    function reload(fileContent)
    {
        console.log("[Hot Reload] Reload requested")

        // wrong file content case
        if(fileContent !== undefined && fileContent.length === 0)
        {
            return;
        }

        // destroy last object if needed
        if(internal.currentObject !== null)
        {
            internal.currentObject.destroy();
        }

        // create the new object depending on the new file content
        try {
            const newObject = Qt.createQmlObject(fileContent, root, "qmlReloadPage");

            if(newObject !== null)
            {
                // assign the current object
                internal.currentObject = newObject;
                // change the size to adapt it to the application
                internal.currentObject.anchors.fill = root;
                // reset the error text
                errorText.text = "";
                // notify that the file has been reloaded
                root.reloaded();
            }
        }
        // handle errors by displaying them into the application
        catch (error)
        {
            console.warn("[Hot Reload] Fail to load component : " + error);
            let errorMsg = ""
            for (var i = 0; i < error.qmlErrors.length; i++) {
                errorMsg += "■ [" + error.qmlErrors[i].lineNumber + ", ";
                errorMsg += error.qmlErrors[i].columnNumber + "]: ";
                errorMsg += error.qmlErrors[i].message +"<br>";
            }
            errorText.text = "<b>Errors found while loading the file</b><br>" + errorMsg + "<br>";
            console.warn(errorMsg.replace("<br>","\n"));
        }
    }

    // ========================================================================
    // Item children
    // ========================================================================

    // c++ class handling the file watchers
    HotReload {
        id: hotReload
        filePath: root.fileToReload

        onReloadRequested: root.reload(hotReload.fileContent);
    }

    Column {
        spacing: Constants.spacing.xs
        padding: Constants.spacing.s

        BasicText {
            text: "Errors"
            color: Constants.color.danger
            font.pixelSize: Constants.font.sizeH2
            visible: Boolean(errorText.text)
        }

        BasicText {
            id: errorText
            color: Constants.color.danger
        }
    }

}
