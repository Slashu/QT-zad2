import QtQuick 2.12
import QtQuick.Window 2.12



Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Grid")

    ListModel {
        id:messages
        ListElement { msg:"hello"; msgC: "yellow"; fSize: 30}
        ListElement { msg:"hello"; msgC: "orange"; fSize: 30}
        ListElement { msg:"hello"; msgC: "red"; fSize: 30}
        ListElement { msg:"hello"; msgC: "pink"; fSize: 25}
        ListElement { msg:"hello"; msgC: "violet"; fSize: 25}
        ListElement { msg:"hello"; msgC: "blue"; fSize: 25}
        ListElement { msg:"hello"; msgC: "green"; fSize: 20}
        ListElement { msg:"hello"; msgC: "gray"; fSize: 20}
        ListElement { msg:"hello"; msgC: "black"; fSize: 20}
        }
    Component {
        id:gridDelegate
        Text {
            text: qsTr(msg)
            font.pointSize: fSize
            color: msgC
            rotation: index *10
        }
    }
    Grid {
        anchors.centerIn: parent
        columns: 3
        spacing: 20
        Repeater {
            model: messages
            delegate: gridDelegate


        }
    }
}
