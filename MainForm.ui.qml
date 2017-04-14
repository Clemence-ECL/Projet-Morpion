import QtQuick 2.6
import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Rectangle {
    id: rectangle  // rectangle de fond
    width: 700
    height: 800
    color: "#00000000"   // couleur de fond
    radius: 3
    property alias image18: image18
    property alias image16: image16
    property alias image17: image17
    property alias image15: image15
    property alias image14: image14
    property alias image13: image13
    property alias image12: image12
    property alias image11: image11
    property alias image10: image10
    property alias image9: image9
    property alias image8: image8
    property alias image7: image7
    property alias image4: image4
    property alias image2: image2
    property alias image6: image6
    property alias image5: image5
    property alias image3: image3
    property alias image1: image1
    property alias mouseArea12: mouseArea12
    property alias rectangle12: rectangle12
    property alias mouseArea22: mouseArea22
    property alias rectangle22: rectangle22
    property alias mouseArea21: mouseArea21
    property alias rectangle21: rectangle21
    property alias mouseArea20: mouseArea20
    property alias rectangle20: rectangle20
    property alias mouseArea02: mouseArea02
    property alias rectangle02: rectangle02
    border.color: "#ffffff"
    property alias image: image
    property alias rectangle00: rectangle00
    property alias mouseArea00: mouseArea00
    property alias rectangle01: rectangle01
    property alias mouseArea01: mouseArea01
    property alias mouseArea11: mouseArea11
    property alias rectangle11: rectangle11
    property alias mouseArea10: mouseArea10
    property alias rectangle10: rectangle10

    border.width: 7    // taille bordure
    // couleur bordure


    Rectangle {
        id: rectangle00
        width: 194
        height: 194
        anchors.left: parent.left
        anchors.leftMargin: 46
        anchors.top: parent.top
        anchors.topMargin: 46
        border.color: "#000000"

        MouseArea {
            id: mouseArea00
            anchors.rightMargin: 6
            anchors.bottomMargin: 0
            anchors.leftMargin: -6
            anchors.topMargin: 0
            anchors.fill: parent

            Image {
                id: image1
                x: 16
                y: 9
                visible : Jeu.display[0]
                width: 175
                height: 176
                source: "pion2.png"
            }

            Image {
                id: image3
                x: 16
                y: 9
                visible : Jeu.display[9]
                width: 170
                height: 176
                source: "pion3.jpg"
            }
        }
    }

    Rectangle {
        id: rectangle10
        y: 100
        width: 196
        height: 204
        anchors.verticalCenterOffset: -25
        anchors.left: parent.left
        anchors.leftMargin: 44
        anchors.verticalCenter: parent.verticalCenter
        border.color: "#000000"

        MouseArea {
            id: mouseArea10
            anchors.leftMargin: 0
            anchors.topMargin: 8
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.fill: parent

            Image {
                id: image5
                x: 8
                y: 8
                visible : Jeu.display[3]
                width: 175
                height: 176
                source: "pion2.png"
            }

            Image {
                id: image6
                x: 8
                y: 8
                visible : Jeu.display[12]
                width: 170
                height: 176
                source: "pion3.jpg"
            }
        }
    }


    Rectangle {
        id: rectangle01
        x: 7
        y: 4
        width: 200
        height: 196
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        MouseArea {
            id: mouseArea01
            anchors.rightMargin: -8
            anchors.bottomMargin: 0
            anchors.leftMargin: -8
            anchors.topMargin: -4
            anchors.fill: parent

            Image {
                id: image2
                x: 16
                y: 9
                visible : Jeu.display[1]
                width: 175
                height: 176
                source: "pion2.png"
            }

            Image {
                id: image4
                x: 21
                y: 14
                visible : Jeu.display[10]
                width: 170
                height: 176
                source: "pion3.jpg"
            }
        }
        anchors.topMargin: 46
        anchors.top: parent.top
        border.color: "#000000"
    }
    Rectangle {
        id: rectangle11
        x: 99  // position
        y: 64
        width: 200 // taille
        height: 204
        anchors.verticalCenterOffset: -25
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter  // centrer sur le cadre rectangle d'avant
        anchors.verticalCenter: parent.verticalCenter
        border.color: "#000000"

        MouseArea {
            id: mouseArea11
            x: -30
            y: 75
            anchors.leftMargin: 6
            anchors.topMargin: 5
            anchors.rightMargin: -6
            anchors.bottomMargin: 3
            anchors.fill: parent

            Image {
                id: image7
                x: 12
                y: 10
                visible : Jeu.display[4]
                width: 175
                height: 176
                source: "pion2.png"
            }

            Image {
                id: image8
                x: 16
                y: 12
                visible : Jeu.display[13]
                width: 170
                height: 176
                source: "pion3.jpg"
            }
        }
    }

    Rectangle {
        id: rectangle02
        x: -9
        y: 0
        width: 194
        height: 194
        anchors.topMargin: 46
        MouseArea {
            id: mouseArea02
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            Image {
                id: image9
                x: 16
                y: 9
                visible : Jeu.display[2]
                width: 175
                height: 176
                source: "pion2.png"
            }

            Image {
                id: image10
                x: 16
                y: 9
                visible : Jeu.display[11]
                width: 170
                height: 176
                source: "pion3.jpg"
            }
            anchors.rightMargin: 6
            anchors.leftMargin: -6
            anchors.fill: parent
        }
        border.color: "#000000"
        anchors.top: parent.top
        anchors.leftMargin: 464
        anchors.left: parent.left
    }

    Rectangle {
        id: rectangle20
        x: 3
        y: 5
        width: 194
        height: 194
        anchors.topMargin: 466
        MouseArea {
            id: mouseArea20
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            Image {
                id: image11
                x: 16
                y: 9
                visible : Jeu.display[6]
                width: 175
                height: 176
                source: "pion2.png"
            }

            Image {
                id: image12
                x: 16
                y: 9
                visible : Jeu.display[15]
                width: 170
                height: 176
                source: "pion3.jpg"
            }
            anchors.rightMargin: 6
            anchors.leftMargin: -6
            anchors.fill: parent
        }
        border.color: "#000000"
        anchors.top: parent.top
        anchors.leftMargin: 46
        anchors.left: parent.left
    }

    Rectangle {
        id: rectangle21
        x: -3
        y: -9
        width: 194
        height: 194
        anchors.topMargin: 466
        MouseArea {
            id: mouseArea21
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            Image {
                id: image13
                x: 16
                y: 9
                visible : Jeu.display[7]
                width: 175
                height: 176
                source: "pion2.png"
            }

            Image {
                id: image14
                x: 16
                y: 9
                visible : Jeu.display[16]
                width: 170
                height: 176
                source: "pion3.jpg"
            }
            anchors.rightMargin: 3
            anchors.leftMargin: -3
            anchors.fill: parent
        }
        border.color: "#000000"
        anchors.top: parent.top
        anchors.leftMargin: 253
        anchors.left: parent.left
    }

    Rectangle {
        id: rectangle22
        x: -1
        y: -1
        width: 194
        height: 194
        anchors.topMargin: 458
        MouseArea {
            id: mouseArea22
            anchors.bottomMargin: 0
            anchors.topMargin: 0

            Image {
                id: image15
                x: 16
                y: 9
                visible : Jeu.display[8]
                width: 175
                height: 176
                source: "pion2.png"
            }

            Image {
                id: image16
                x: 16
                y: 9
                visible : Jeu.display[17]
                width: 170
                height: 176
                source: "pion3.jpg"
            }
            anchors.rightMargin: 6
            anchors.leftMargin: -6
            anchors.fill: parent
        }
        border.color: "#000000"
        anchors.top: parent.top
        anchors.leftMargin: 464
        anchors.left: parent.left
    }

    Rectangle {
        id: rectangle12
        x: 8
        y: 7
        width: 194
        height: 194
        anchors.topMargin: 253
        MouseArea {
            id: mouseArea12
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            Image {
                id: image17
                x: 16
                y: 9
                visible : Jeu.display[5]
                width: 175
                height: 176
                source: "pion2.png"
            }

            Image {
                id: image18
                x: 16
                y: 9
                visible : Jeu.display[14]
                width: 170
                height: 176
                source: "pion3.jpg"
            }
            anchors.rightMargin: 6
            anchors.leftMargin: -6
            anchors.fill: parent
        }
        border.color: "#000000"
        anchors.top: parent.top
        anchors.leftMargin: 464
        anchors.left: parent.left
    }

Image {
    id: image
    width: 640
    height: 640
    z: -1
    anchors.left: parent.left
    anchors.leftMargin: 30
    anchors.top: parent.top
    anchors.topMargin: 30
    source: "grille.png"
}
}

