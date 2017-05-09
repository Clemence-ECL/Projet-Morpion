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
        {D.append(value);}
    C=0;/*
    CasePrecedente.push_back(-1);
    CasePrecedente.push_back(-1);*/
}

QList<bool> pion::checkPosition()
{
    return D;
}

void pion::changement(int j) {
    //on bloque le jeu si il y a une victoire
    if(victoire == 0) {
        // Si on n'a pas encore placé tous les pions
        if(C<6){
            if(D[j]==false && D[j+9]==false){         // si la case est noire (pas déjà occupée) (on regarde si elle n'est occupée par aucun joueur)
                // On fait apparaître le pion correspondant au joueur
                if(C%2==0)
                    {D[j]=true;}
                if(C%2==1)
                    {D[j+9]=true;}
                C++;
            }
        }

        // Si on a déjà placé tous les pions
        else {
            //Si il y a six pions sur le terrain
            if (SixPions == 1) {
                if(C%2==0 && D[j]==true) {
                    D[j]=false;
                    SixPions = 0;
                }
                if(C%2==1 && D[j+9]==true) {
                    D[j+9]=false;
                    SixPions = 0;
                }
            }
            //Si on a déjà retiré un pion
            else {
                if(D[j]==false && D[j+9]==false) {
                    if(C%2==0)
                        {D[j]=true;}
                    if(C%2==1)
                        {D[j+9]=true;}
                    C++;
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
        {D[i]=false;
        D[i+9]=false;}   // remet toutes les cases en noires
    C=0;                    // remet le compteur de tour à 0
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
    if(D[0]==true && D[1]==true && D[2]==true){
        victoire=1;}
    if(D[3]==true && D[4]==true && D[5]==true){
        victoire=1;}
    if(D[6]==true && D[7]==true && D[8]==true){
        victoire=1;}
    if(D[0]==true && D[3]==true && D[6]==true){
        victoire=1;}
    if(D[1]==true && D[4]==true && D[7]==true){
        victoire=1;}
    if(D[2]==true && D[5]==true && D[8]==true){
        victoire=1;}
    if(D[0]==true && D[4]==true && D[8]==true){
        victoire=1;}
    if(D[2]==true && D[4]==true && D[6]==true){
        victoire=1;}

    // joueur 2 gagne
    if(D[9]==true && D[10]==true && D[11]==true){
            victoire=2;}
    if(D[12]==true && D[13]==true && D[14]==true){
            victoire=2;}
    if(D[15]==true && D[16]==true && D[17]==true){
            victoire=2;}
    if(D[9]==true && D[12]==true && D[15]==true){
            victoire=2;}
    if(D[10]==true && D[13]==true && D[16]==true){
            victoire=2;}
    if(D[11]==true && D[14]==true && D[17]==true){
            victoire=2;}
    if(D[9]==true && D[13]==true && D[17]==true){
            victoire=2;}
    if(D[11]==true && D[13]==true && D[15]==true){
            victoire=2;}
}


bool pion::readCompteur()
{
    return C%2+1;
}

