#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "pion.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    //Compteur unCompteur;     // créer un compteur
    pion unJeu;

    QQmlApplicationEngine engine;  // charger les ressources pour l'application
   // engine.rootContext()->setContextProperty("vueObjetCpt", &unCompteur); // associer compteur au nom vueObjetCpt
    engine.rootContext()->setContextProperty("Jeu", &unJeu); // associer le jeu au nom Jeu

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));   //charger l'interface

    return app.exec();
}
