#include "reload/HotReload.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQuickControls2/QQuickStyle>

int main(int argc, char *argv[]) {
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

  QGuiApplication app(argc, argv);

  app.setApplicationName(QStringLiteral("Reloader"));
  app.setOrganizationName(QStringLiteral("Capgemini"));
  app.setOrganizationDomain(QStringLiteral("Capgemini domain"));

  QQmlApplicationEngine engine;
  const QUrl url(QStringLiteral("qrc:/qml/main.qml"));
  QObject::connect(&engine, &QQmlApplicationEngine::objectCreated, &app,
                   [url](QObject *obj, const QUrl &objUrl) {
                     if (!obj && url == objUrl)
                       QCoreApplication::exit(-1);
                   },
                   Qt::QueuedConnection);

  qmlRegisterSingletonType(QUrl("qrc:///qml/util/Constants.qml"),
                           "quickProject", 1, 0, "Constants");
  qmlRegisterSingletonType(QUrl("qrc:///qml/util/Icons.qml"),
                           "quickProject", 1, 0, "Icons");
  qmlRegisterType<HotReload>("quickProject",
                                                       1, 0, "HotReload");

  qmlRegisterType(QUrl("qrc:/qml/component/Icon.qml"), "quickProject", 1, 0, "Icon");
  qmlRegisterType(QUrl("qrc:/qml/component/BasicButton.qml"), "quickProject", 1, 0, "BasicButton");
  qmlRegisterType(QUrl("qrc:/qml/component/BasicText.qml"), "quickProject", 1, 0, "BasicText");
  qmlRegisterType(QUrl("qrc:/qml/component/MenuButton.qml"), "quickProject", 1, 0, "MenuButton");
  qmlRegisterType(QUrl("qrc:/qml/component/Toast.qml"), "quickProject", 1, 0, "Toast");

  engine.load(url);

  return app.exec();
}
