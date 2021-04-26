import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
Window {
    id: window
    visible: true
    width: 640
    height: 480

    title: qsTr("Hello World")
    //    RowLayout{
    //        width: parent.width
    //        height: parent.height
    Root {
        id: lefttrect
        tittle: "list items"
        width: parent.width* (1/3)
        height: parent.height
        anchors{
            top: parent.top
            left: parent.left
        }


        Column{
            id:clmitems
            width: parent.width* 8/10
            height: parent.height * 9/10//children.height
            spacing: 5
            anchors{
                margins: 10
                horizontalCenter: parent.horizontalCenter
                verticalCenter: parent.verticalCenter
            }

            Repeater{
                id: repeater
                model:5
                MyComponent {
                    id: myComponent
                    //                    color:onActiveFocusChanged?"green":"red"
                    color: "green"
                    MouseArea {
                        id: mouseArea
                        anchors.fill: parent

                        //anchors.centerIn: parent

                        onClicked:{lable1.text=qsTr("item"+index+"  selected");
                            for(var i = 0; i < 5; ++i){
                                //                            myComponent.color="red"
                                repeater.itemAt(i).color= i==index?"red":"green"

                            }

                        }
                    }
                }

            }
        }
    }
    Root {
        id: rightrect
        tittle: "detail"
        width: parent.width* (2/3)
        anchors{
            top: parent.top
            right: parent.right

        }
        Label {
            id: lable1
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "no selcted item"
            anchors.centerIn: parent

        }

    }
}


