import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    id: splash
    flags: Qt.SplashScreen

    //color: Theme.primaryColor
    modality: Qt.ApplicationModal
    title: "Splash Window"
    visible: true

    width: Theme.width
    height: Theme.height

    property int timeoutInterval: 2000
    signal timeout
    y: 0

    color: Theme.secondaryColor

    Label {
        id: logo
        text: qsTr("One Focus")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 26
        font.bold: true
        anchors.topMargin: 130

        Image {
            id: logoImage
            source: "qrc:/img/task.png"
            y: 60
            anchors.horizontalCenter: parent.horizontalCenter
            width: 100
            height: 100
        }
    }

    Label {
        id: hello
        text: qsTr("Hi Ahmed")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: logo.bottom
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 26
        anchors.topMargin: 200
        Label {
            id: motiv
            y: 20
            color: "#000000"

            text: qsTr("What are the tasks <br>that you can accomplish <br>today to make your succes steps")
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
            font.styleName: "Bold"
            font.family: "Verdana"
            anchors.top: hello.bottom

            anchors.topMargin: 30
            anchors.horizontalCenter: parent.horizontalCenter

            font.pointSize: 15

            background: Rectangle {
                anchors.fill: parent
                color: "yellow"
                opacity: 0.8
            }
        }
    }

    Timer {
        interval: splash.timeoutInterval
        running: true
        repeat: false
        onTriggered: {
            splash.visible = false
            splash.timeout()
        }
    }
}
