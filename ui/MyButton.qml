import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import MyTheme 1.0

Button {
    id: idButton

    property alias iconText: idButton.text
    text: qsTr("")
    contentItem: Text {
        text: idButton.text
        font: idButton.font
        opacity: enabled ? 1.0 : 0.3
        color: idButton.down ? Theme.primaryColor : Theme.secondaryColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 30
        opacity: enabled ? 1 : 0.3
        color: idButton.down ? Theme.primaryColor : Theme.primaryColor
        border.color: idButton.pressed ? Theme.primaryColor : Theme.secondaryColor
        border.width: 1
        radius: 2
    }
}
