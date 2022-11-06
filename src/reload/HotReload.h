#pragma once


#include <QtQml/qqml.h>
#include <QFile>
#include <QFileSystemWatcher>
#include <QObject>
#include <QQmlParserStatus>
#include <QString>
#include <QStringList>

/**
 * @brief Utilitary class allowing to have a hot reload on the chosen qml file
 * file
 */
class HotReload : public QObject
{
    Q_OBJECT

    //! @brief The content of the hot reloaded file
    Q_PROPERTY(QString fileContent READ fileContent CONSTANT)

    //! @brief True when hot reloading is enabled
    Q_PROPERTY(bool valid MEMBER _valid NOTIFY validChanged)

    //! @brief The path the file path used for the hot reloading
    Q_PROPERTY(QString filePath MEMBER _filePath NOTIFY filePathChanged)

   public:
    //! @brief Default constructor
    explicit HotReload(QObject *parent = nullptr);

    //! @brief file content property getter
    QString fileContent() const;

   signals:
    // properties signals
    void validChanged(bool valid);
    void filePathChanged(QString filePath);
    void reloadRequested();

   private slots:

    //! @brief Init all the hot reload process, called when the user choose a new file
    //! @param The path of the reloaded file
    void filePathUpdated(const QString &path);

    //! @brief Triggered when the hot reloaded file content is modified
    //! @param The path of the reloaded file
    void fileContentUpdated(const QString &path);

   private:
    //! @brief Loop on all the project folder sub qml files and add watchers
    void watchSecondaryFiles();

    //! @brief Compute the project folder path based on the reloaded file path
    void updateProjectFolderPath();

    //! @brief Add to the file content necessary imports
    void addQmlImports();

    //! @brief The content of the reloaded file
    QString _fileContent;

    //! @brief The path the file path used for the hot reloading
    QString _filePath;

    //! @brief The hot reloaded file
    QFile *_file{nullptr};

    //! @brief The watcher watching the hot reloaded file
    QFileSystemWatcher *_watcher{nullptr};

    //! @brief The project folder path (based on the reloaded file path)
    QString _projectFolderPath;

    //! @brief List of all other qml files
    QStringList _secondaryFilePaths;

    //! @brief List containing all the watchers for other qml files
    QList<QFileSystemWatcher *> _secondaryWatchers;

    //! @brief True when hot reloading is enabled
    bool _valid{true};
};
