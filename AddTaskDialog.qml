import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import MyTheme 1.0
import "ui"

Rectangle {
    id: addToDoDialog
    width: 360
    height: 300
    visible: true
    color: Theme.backgroundColor
    radius: 30
    Column {
        id: column
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        anchors.topMargin: 10
        spacing: 5
        Label {
            id: label
            text: qsTr("Add Task")
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 18
            anchors.topMargin: 10
        }
        Label {
            text: qsTr("Title")
            font.bold: true
            anchors.topMargin: 20
        }
        TextField {
            id: nameField
            hoverEnabled: true
            placeholderText: qsTr("Add a title to your task")
            background: Rectangle {
                implicitWidth: addToDoDialog.width - 40
                implicitHeight: 30
                color: Theme.secondaryColor
                border.color: Theme.primaryColor
                Layout.fillWidth: true
                radius: 5
            }
        }

        // Label and TextField for Description
        Label {
            text: qsTr("Description")
            font.bold: true
        }
        TextField {
            id: descriptionField
            background: Rectangle {
                implicitWidth: addToDoDialog.width - 40
                implicitHeight: 30
                color: Theme.secondaryColor
                border.color: Theme.primaryColor
                Layout.fillWidth: true
                radius: 5
            }
            placeholderText: qsTr("Enter Description")
            wrapMode: Text.WordWrap // Allow multi-line input for description
        }

        // Label and ComboBox for Priority selection
        Label {
            text: qsTr("Priority")
            font.bold: true
        }
        ComboBox {
            id: priorityCombo
            height: 30
            background: Rectangle {
                implicitWidth: addToDoDialog.width - 40
                implicitHeight: 30
                color: Theme.secondaryColor
                border.color: Theme.primaryColor
                Layout.fillWidth: true
                radius: 5
            }
            model: ["Low", "Medium", "High"]
            //placeholderText: qsTr("Select Priority")
        }
    }

    Row {
        //y: 0
        //anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        spacing: 40
        anchors.bottomMargin: 10
        //anchors.leftMargin: 20
        anchors.rightMargin: 20

        MyButton {
            id: cancelButton
            //anchors.rightMargin: 20
            iconText: qsTr("Cancel")
            onClicked: console.log(" cancel button clicked")
        }

        MyButton {
            id: addButton
            iconText: qsTr("ADD")
            highlighted: true
            onClicked: console.log("add button clicked")
        }
    }
}
