#ifndef PION_H
#define PION_H

#include <QObject>

using namespace std;

class pion : public QObject
{
    Q_OBJECT
public:
    // compteur
    /*Q_INVOKABLE void increment();*/

    Q_PROPERTY(bool cptQML READ readCompteur NOTIFY cptChanged);

    bool readCompteur();


    explicit pion(QObject *parent = 0);
    Q_INVOKABLE void Init(bool value=false);



    Q_PROPERTY(QList<bool> display READ checkEtat NOTIFY positionChanged);

    QList<bool> checkEtat();

    Q_INVOKABLE void changement(int j);

    Q_INVOKABLE int get_victoire();
    Q_INVOKABLE void test_victoire();
    Q_INVOKABLE void nouvelle_partie();

signals:
    void positionChanged();
    void cptChanged();

public slots:

private:
    int fCompteur;
    vector<int> CasePrecedente;
    QList<bool> visibilite; /*cette liste stocke l'état de visibilité du pion 1 ou 1*/
    int joueur; /* joueur va nous permettre de savoir qui joue*/
    int SixPions = 1;
    int victoire=0;
    QString couleurj1;
    QString couleurj2;
};

#endif // PION_H
