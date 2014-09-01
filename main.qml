import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1

Window {
    visible: true
    width: 800
    height: 600
    color: "black";

    AnimatedSprite {
        id: portrait
        frameX: 0
        frameY: 481
        frameWidth : 300
        frameHeight: 300

        frameCount: 1
        source: "humans.png"

        width: 300
        height: 300
        x: 300
        y: 100
        transform: Rotation { origin.x: 0; origin.y: 0; angle: 45}
    }
    AnimatedSprite {
        id: ship
        frameX: 0
        frameY: 320
        frameWidth : 160
        frameHeight: 160

        frameCount: 1
        source: "humans.png"

        width: 160
        height: 160
        x: 400
        y: 10
    }


    Rectangle {
        width: 200
        height: 200
        color: "green"
        border.color: "black"
        border.width: 1
        radius: width

    }

    FontLoader { id: localFont; source: "JLSSpaceGothicR.ttf" }

    Text {
        text: qsTr("Version 0.59")
        color: "yellow";
        x: 0;
        y: 500;
        font {
            family: localFont.name;
            pointSize: 14;
            capitalization: Font.Capitalize
        }

    }


}
