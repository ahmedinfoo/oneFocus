#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

 // Register the Theme.qml and Enum as a singleton type
 qmlRegisterSingletonType(QUrl("qrc:/TodoV1/ui/Theme.qml"), "MyTheme", 1, 0, "Theme");
 qmlRegisterSingletonType(QUrl("qrc:/TodoV1/ui/TabEnum.qml"), "MyEnum", 1, 0, "Enum");

 const QUrl url(QStringLiteral("qrc:/TodoV1/main.qml"));
 QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
