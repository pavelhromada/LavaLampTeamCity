/*
  This is free and unencumbered software released into the public domain.
  Author: pavel.hromada@gmail.com
*/

import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.1

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    LavaLamp {
        id: lamp
        anchors.centerIn: parent
        bubbling: true
    }

    ButtonGroup {
        buttons: column.children
    }

    Column {
        id: column

        spacing: 16

        RadioButton {
            checked: true
            text: "normal"
            onCheckedChanged: if (checked) lamp.style = "normal"
        }

        RadioButton {
            text: "running"
            onCheckedChanged: if (checked) lamp.style = "running"
        }

        RadioButton {
            text: "error"
            onCheckedChanged: if (checked) lamp.style = "error"
        }
    }
}
