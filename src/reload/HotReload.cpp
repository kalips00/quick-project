#include "HotReload.h"

#include <QDebug>
#include <QDir>
#include <QDirIterator>
#include <QThread>


HotReload::HotReload(QObject *parent) : QObject(parent)
{
    connect(this, &HotReload::filePathChanged, this, &HotReload::filePathUpdated);
}

QString HotReload::fileContent() const { return _fileContent; }

void HotReload::filePathUpdated(const QString &path)
{
    qDebug() << "[HotReload] New file selected, initialization ... {filePath:" << path << "}";

    _filePath = path;
    // remove prefix "file:///"
    _filePath.remove(0, 8);
    _file = new QFile(_filePath, this);
    _watcher = new QFileSystemWatcher(this);

    if (_file->exists() && _watcher->addPath(_filePath))
    {
        // update folder project path
        updateProjectFolderPath();

        // get content
        _file->open(QIODevice::ReadOnly);
        if (_file->isOpen())
        {
            _fileContent.clear();
            addQmlImports();
            _fileContent += _file->readAll();
            _file->close();
        }
        // connect watcher signal
        connect(_watcher, &QFileSystemWatcher::fileChanged, this, &HotReload::fileContentUpdated);

        // remove old sub watchers
        _secondaryWatchers.clear();

        // create sub watchers for secondary files
        watchSecondaryFiles();

        // notify users
        emit reloadRequested();
        qDebug() << "[HotReload] Hot reload is working, {filePath: " << _filePath << "}.";
    }
    else
    {
        _valid = false;
        emit validChanged(_valid);

        qWarning() << "[HotReload] Could not find file for hot reload,  {filePath: " << _filePath << "}.";
    }
}

void HotReload::fileContentUpdated(const QString &path)
{
    // some text editors like QtCreator use temporary files and then remove the
    // original file so we have to re add the file path to the watcher to be
    // notified next time
    if (!_watcher->files().contains(path))
    {
        bool isOK = _watcher->addPath(path);
        // Qt creator take time to delete et recreate file so we have to wait
        while (!isOK)
        {
            QThread::msleep(10);
            isOK = _watcher->addPath(path);
        }
    }

    // we read the file modifications and modify the content property
    _file->setFileName(path);
    _file->open(QIODevice::ReadOnly);
    if (_file->isOpen())
    {
        _fileContent.clear();
        addQmlImports();
        _fileContent += _file->readAll();
        emit reloadRequested();
        _file->close();
    }
    else
    {
        qWarning() << "[Hot Reload] fileUpdated: File to update cannot be opened, {errors: "
                   << _file->errorString() << "}";
    }
}

void HotReload::watchSecondaryFiles()
{
    if (!_projectFolderPath.isEmpty())
    {
        qDebug() << "[Hot Reload] Watching the entire project folder, {folder path:" << _projectFolderPath << "}.";
        QDir projectFolder(_projectFolderPath);

        if (projectFolder.exists())
        {
            // loop recursively into the file's folder
            QDirIterator it(_projectFolderPath, QStringList() << "*.qml", QDir::Files,
                            QDirIterator::Subdirectories);
            int nbFilesWatched = 0;
            while (it.hasNext())
            {
                const QString &secondaryFilePath = it.next();

                if (secondaryFilePath != _filePath)
                {
                    // install file watcher on each secondary files

                    QFileSystemWatcher *secondFileWatcher = new QFileSystemWatcher(this);
                    _secondaryWatchers.append(secondFileWatcher);
                    auto watcherIsOK = secondFileWatcher->addPath(secondaryFilePath);

                    if (watcherIsOK)
                    {
                        connect(secondFileWatcher, &QFileSystemWatcher::fileChanged, this, [=](const QString &path) {
                            qDebug() << "[Hot Reload] Secondary file changed, { filePath: " << path << " }.";
                            fileContentUpdated(_filePath);
                        });
                        nbFilesWatched++;
                    }
                }
            }

            // create connections
            qDebug() << "[Hot Reload] Project folder analyzed, { fileCountWatched: " << nbFilesWatched << " }.";
        }
    }
}

void HotReload::updateProjectFolderPath()
{
    int lastSlashIndex = _filePath.lastIndexOf("/");

    if (lastSlashIndex != -1)
    {
        // compute the folder path
        _projectFolderPath = _filePath.left(lastSlashIndex);
    }
    else
    {
        _projectFolderPath = "";
    }
}

void HotReload::addQmlImports()
{
    // import for reloader internal components
    _fileContent += "import quickProject\n";
    _fileContent += "import \"../component\"\n";
    // this import allows to be able to load also sub components
    _fileContent += "import \"file:///" + _projectFolderPath + "\"\n";
}
