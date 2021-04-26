import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
Rectangle{
    width:parent.width
    height:30// parent.height
    border.color: "gold"
    Text{
        id:elable
        text: qsTr("item"+ index)
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.topMargin: 3
    }

}
