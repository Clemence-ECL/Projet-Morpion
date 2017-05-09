import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: application
    visible: true
    width: 740
    height: 700
    title: qsTr("Jeu Araignée")


    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("Nouvelle Partie")
                onTriggered: Jeu.nouvelle_partie(0);
            }
            MenuItem {
                text: qsTr("Fermer")
                onTriggered: Qt.quit();
            }
        }
    }


    MainForm {
        anchors.fill: parent
        id : rectangle
        mouseArea00{
            onClicked:
                {/*Jeu.increment();*/
                Jeu.changement(0);
                if(Jeu.get_victoire()==1)  // si victoire du joueur 1
                    {messageDialog.show(qsTr("Joueur 1, vous avez gagné"));}       // afficher un message dans un nouvelle fenetre
                if(Jeu.get_victoire()==2)  // si victoire du joueur 2
                    {messageDialog.show(qsTr("Joueur 2, vous avez gagné"));}} // afficher un message dans un nouvelle fenetre

        }
        mouseArea01{
            onClicked:
                {/*Jeu.increment();*/
                Jeu.changement(1);
                if(Jeu.get_victoire()==1)  // si victoire du joueur 1
                    {messageDialog.show(qsTr("Joueur 1, vous avez gagné"));}  // afficher un message dans un nouvelle fenetre
                if(Jeu.get_victoire()==2)  // si victoire du joueur 2
                    {messageDialog.show(qsTr("Joueur 2, vous avez gagné"));}} // afficher un message dans un nouvelle fenetre
                }

        mouseArea02{
            onClicked:
                {/*Jeu.increment();*/
                Jeu.changement(2);
        if(Jeu.get_victoire()==1)  // si victoire du joueur 1
            {messageDialog.show(qsTr("Joueur 1, vous avez gagné"));}  // afficher un message dans un nouvelle fenetre
        if(Jeu.get_victoire()==2)  // si victoire du joueur 2
            {messageDialog.show(qsTr("Joueur 2, vous avez gagné"));}} // afficher un message dans un nouvelle fenetre
}


        mouseArea10{
            onClicked:
                {/*Jeu.increment();*/
                Jeu.changement(3);
                if(Jeu.get_victoire()==1)  // si victoire du joueur 1
                    {messageDialog.show(qsTr("Joueur 1, vous avez gagné"));}  // afficher un message dans un nouvelle fenetre
                if(Jeu.get_victoire()==2)  // si victoire du joueur 2
                    {messageDialog.show(qsTr("Joueur 2, vous avez gagné"));}} // afficher un message dans un nouvelle fenetre
        }
        mouseArea11{
            onClicked:
                {/*Jeu.increment();*/
                Jeu.changement(4);
                if(Jeu.get_victoire()==1)  // si victoire du joueur 1
                    {messageDialog.show(qsTr("Joueur 1, vous avez gagné"));}  // afficher un message dans un nouvelle fenetre
                if(Jeu.get_victoire()==2)  // si victoire du joueur 2
                    {messageDialog.show(qsTr("Joueur 2, vous avez gagné"));}} // afficher un message dans un nouvelle fenetre
        }
        mouseArea12{
            onClicked:
                {/*Jeu.increment();*/
                Jeu.changement(5);
                if(Jeu.get_victoire()==1)  // si victoire du joueur 1
                    {messageDialog.show(qsTr("Joueur 1, vous avez gagné"));}  // afficher un message dans un nouvelle fenetre
                if(Jeu.get_victoire()==2)  // si victoire du joueur 2
                    {messageDialog.show(qsTr("Joueur 2, vous avez gagné"));}} // afficher un message dans un nouvelle fenetre}
        }
        mouseArea20{
            onClicked:
                {/*Jeu.increment();*/
                Jeu.changement(6);
                if(Jeu.get_victoire()==1)  // si victoire du joueur 1
                    {messageDialog.show(qsTr("Joueur 1, vous avez gagné"));}  // afficher un message dans un nouvelle fenetre
                if(Jeu.get_victoire()==2)  // si victoire du joueur 2
                    {messageDialog.show(qsTr("Joueur 2, vous avez gagné"));}} // afficher un message dans un nouvelle fenetre}
        }
        mouseArea21{
            onClicked:
                {/*Jeu.increment();*/
                Jeu.changement(7);
                if(Jeu.get_victoire()==1)  // si victoire du joueur 1
                    {messageDialog.show(qsTr("Joueur 1, vous avez gagné"));}  // afficher un message dans un nouvelle fenetre
                if(Jeu.get_victoire()==2)  // si victoire du joueur 2
                    {messageDialog.show(qsTr("Joueur 2, vous avez gagné"));}} // afficher un message dans un nouvelle fenetre}
        }
        mouseArea22{
            onClicked:
                {//Jeu.increment();
                Jeu.changement(8);
            if(Jeu.get_victoire()==1)  // si victoire du joueur 1
                {messageDialog.show(qsTr("Joueur 1, vous avez gagné"));}  // afficher un message dans un nouvelle fenetre
            if(Jeu.get_victoire()==2)  // si victoire du joueur 2
                {messageDialog.show(qsTr("Joueur 2, vous avez gagné"));}} // afficher un message dans un nouvelle fenetre
    }
}

    // message à afficher quand victoire
    MessageDialog {
        id: messageDialog
        title: qsTr("Fin de la partie !")

        standardButtons: StandardButton.No | StandardButton.Yes
            onYes: Jeu.nouvelle_partie()
            onNo: Qt.quit()

        function show(caption) {
            messageDialog.text = caption+" ! Voulez-vous rejouez ?";
            messageDialog.open();
        }
    }

}
