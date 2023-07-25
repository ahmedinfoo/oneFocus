import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import MyTheme 1.0
import MyEnum 1.0

Item {

    property int index: 0
    property bool selected: false
    property alias iconSource: iconImage.source
    property alias iconText: iconText.text
    property alias widthButton: iconImage.width
    property alias heightButton: iconImage.height
    property alias radiusButton: rectId.radius
    property alias borderWidthButton: rectId.border.width
    property bool iconOnly: true

    // Custom signal to emit when the button is clicked
    signal clickedButton(Enum tab)

    Rectangle {
        id: rectId
        anchors.fill: parent
        color: selected ? Theme.secondaryColor : Theme.primaryColor
        radius: 0
        border.color: Theme.secondaryColor
        border.width: 0
        Image {
            id: iconImage
            source: ""
            anchors.centerIn: parent
        }
        Text {
            id: iconText
            text: ""
            anchors.centerIn: parent
            font.family: "Material Icons" // Specify the font family for Material Icons
            font.pointSize: iconOnly ? 25 : 15 // Adjust the font size as needed
            color: Theme.secondaryColor
        }
        MouseArea {
            id: area
            anchors.fill: parent
            onClicked: {
                clickedButton(Enum.Tabs[index])
            }
        }
    }
}
