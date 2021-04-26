import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
Rectangle{
    property var tittle: ""
    height: parent.height

    border.color: "red"
    border.width: 3
    Text{
        id:elable
        text: tittle
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 3
    }
    Rectangle{
        id:bottomBorder
        anchors.top: elable.bottom
        anchors.topMargin: 2
        anchors.bottomMargin: 5
        anchors.leftMargin: 3
        anchors.rightMargin: 3
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width *9/10
        height: 2
        color:  "green"
    }
}
