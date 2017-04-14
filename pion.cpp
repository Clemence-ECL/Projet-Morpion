#include "pion.h"
#include <iostream>


using namespace std;

pion::pion(QObject *parent) : QObject(parent)
{
    Init(false);
    positionChanged();
}

void pion::Init(bool value){
    for (int i=0;i<18;i++)
        {visibilite.append(value);}
    joueur=0; /*personne n'a encore joué*/
}

QList<bool> pion::checkEtat()
{
    return visibilite;
}

void pion::changement(int j) {
    //on bloque le jeu si il y a une victoire
    if(victoire == 0) {
        // Si on n'a pas encore placé tous les pions
        if(joueur<6){
            if(visibilite[j]==false && visibilite[j+9]==false){         // si la case est noire (pas déjà occupée) (on regarde si elle n'est occupée par aucun joueur)
                // On fait apparaître le pion correspondant au joueur
                if(joueur%2==0)
                    {visibilite[j]=true;}
                if(joueur%2==1)
                    {visibilite[j+9]=true;}
                joueur++;
            }
        }

        // Si on a déjà placé tous les pions
        else {
            //Si il y a six pions sur le terrain
            if (SixPions == 1) {
                if(joueur%2==0 && visibilite[j]==true) {
                    visibilite[j]=false;
                    SixPions = 0;
                }
                if(joueur%2==1 && visibilite[j+9]==true) {
                    visibilite[j+9]=false;
                    SixPions = 0;
                }
            }
            //Si on a déjà retiré un pion
            else {
                if(visibilite[j]==false && visibilite[j+9]==false) {
                    if(joueur%2==0)
                        {visibilite[j]=true;}
                    if(joueur%2==1)
                        {visibilite[j+9]=true;}
                    joueur++;
                    SixPions = 1;
                }
            }
        }

        test_victoire();
        positionChanged();
        cptChanged();
    }
}

void pion::nouvelle_partie(){   // méthode appelée quand on clique sur le bouton "Nouvelle Partie"
    for(int i=0;i<9;i++)
        {visibilite[i]=false;
        visibilite[i+9]=false;}   // remet toutes les cases en noires
    joueur=0;                    // remet le compteur de tour à 0
    victoire=0;             // remet la victoire à 0
    SixPions = 1;
    positionChanged();        // actualise les chgmts dans mainform
    cptChanged();
}


int pion::get_victoire(){  // retourne l'attribu victoire
    return victoire;
}


void pion::test_victoire(){              // methode appelée à chaque fois que l'on change une case de couleur :
    // met l'attribu victoire à 1 si le joueur 1 a gagné, et à 2 si le joueur 2 a gagné
    // change la couleur sur la ligne gagner : en rouge

    // joueur 1 gagne
    if(visibilite[0]==true && visibilite[1]==true && visibilite[2]==true){
        victoire=1;}
    if(visibilite[3]==true && visibilite[4]==true && visibilite[5]==true){
        victoire=1;}
    if(visibilite[6]==true && visibilite[7]==true && visibilite[8]==true){
        victoire=1;}
    if(visibilite[0]==true && visibilite[3]==true && visibilite[6]==true){
        victoire=1;}
    if(visibilite[1]==true && visibilite[4]==true && visibilite[7]==true){
        victoire=1;}
    if(visibilite[2]==true && visibilite[5]==true && visibilite[8]==true){
        victoire=1;}
    if(visibilite[0]==true && visibilite[4]==true && visibilite[8]==true){
        victoire=1;}
    if(visibilite[2]==true && visibilite[4]==true && visibilite[6]==true){
        victoire=1;}

    // joueur 2 gagne
    if(visibilite[9]==true && visibilite[10]==true && visibilite[11]==true){
            victoire=2;}
    if(visibilite[12]==true && visibilite[13]==true && visibilite[14]==true){
            victoire=2;}
    if(visibilite[15]==true && visibilite[16]==true && visibilite[17]==true){
            victoire=2;}
    if(visibilite[9]==true && visibilite[12]==true && visibilite[15]==true){
            victoire=2;}
    if(visibilite[10]==true && visibilite[13]==true && visibilite[16]==true){
            victoire=2;}
    if(visibilite[11]==true && visibilite[14]==true && visibilite[17]==true){
            victoire=2;}
    if(visibilite[9]==true && visibilite[13]==true && visibilite[17]==true){
            victoire=2;}
    if(visibilite[11]==true && visibilite[13]==true && visibilite[15]==true){
            victoire=2;}
}


bool pion::readCompteur()
{
    return joueur%2+1;
}

