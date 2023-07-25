import QtQuick 2.15
import QtQuick.Controls 2.15
import MyTheme 1.0
import "ui"
import MyEnum 1.0

Rectangle {
    property bool myTaskButtonClicked: false
    property bool addTaskButtonClicked: false
    property bool settingButtonClicked: false

    id: root
    width: parent.width
    height: 56
    color: Theme.primaryColor
    anchors.bottom: parent.bottom

    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 70
        MyTabButton {
            id: myTaskButtonId
            width: 50
            height: 50
            //iconSource: "qrc:/img/list1.svg"
            iconText: "\u2630"
            onClickedButton: {
                selectedTab = Enum.Tabs.TabMyTask
                myTaskButtonClicked = !addTaskButtonClicked
                console.log("selected tab is =" + selectedTab)
            }
        }
        MyTabButton {
            id: addTaskButtonId
            width: 70
            height: 70
            //color: "red"
            radiusButton: width
            borderWidthButton: 5
            // iconSource: "qrc:/img/addTask.svg"
            iconText: "\u002B"
            onClickedButton: {
                selectedTab = Enum.Tabs.TabAddTask
                addTaskButtonClicked = !addTaskButtonClicked
                console.log("selected tab is =" + selectedTab)
            }
            y: -25
        }
        MyTabButton {
            id: settingButtonId
            width: 50
            height: 50
            //iconSource: "qrc:/img/setting.svg"
            iconText: "\u25C0"
            onClickedButton: {
                selectedTab = Enum.Tabs.TabSettings
                settingButtonClicked = !addTaskButtonClicked
                console.log("selected tab is =" + selectedTab)
            }
        }
    }

    property int selectedTab: 0
}
