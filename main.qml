import QtQuick 2.15
import QtQuick.Controls 2.15
import MyTheme 1.0

Window {
    id: window
    width: Theme.width
    height: Theme.height
    //visible: true
    property SplashScreen splash: SplashScreen {
        onTimeout: window.show()
    }

    color: Theme.secondaryColor
    Label {
        id: label
        text: qsTr("One Focus")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 26
        font.bold: true
        anchors.topMargin: 30
    }
    Column {
        id: column
        spacing: 50
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 200

        ListView {}

        AddTaskDialog {
            id: addDialogId
            visible: true
        }
    }
    BottomNavigationBar {

        id: footerId
        onAddTaskButtonClickedChanged: addDialogId.visible = !addDialogId.visible
        anchors.bottom: parent.bottom
    }
}
