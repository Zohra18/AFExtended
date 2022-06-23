//
//  ExtractViewExemple.swift
//  AFExtended
//
//  Created by Zohra Achour on 22/06/2022.
//

import SwiftUI

struct ExtractViewExemple: View {
    //je veux modifier la forme de mes Circle() donc j'ai d'un interrupteur, ici on choisie d'utiliser un Bool
    @State private var changeForm: Bool = false
  
    var body: some View {
        VStack {
            //notre @State Bool fonctionne bien avec un Toggle donc j'en profite l'utiliser
            //Le Toggle permet de changer la valeur d'un Bool de false à true et inversement
            Toggle(isOn: $changeForm, label: {
                Text("Change Form")
            })
            .padding()
            
            //j'appel mon extraction de View autant de fois que nécessaire
            //et je rempli ici les valeur que j'aimerais voir afficher
            //dans notre cas: une couleur, du text et une taille
            //j'ai également fait un lien entre mon @State sur cette vue et le @Binding sur la vue enfant (l'extraction) -ce lien se fait avec le $
            //il nous permet d'activer notre condition dans notre extraction de View et changer la forme de notre Circle
            ExtractedCircle(color: .red, size: 120, text: "Red", originalForm: $changeForm)
            ExtractedCircle(color: .yellow, size: 200, text: "Yellow", originalForm: $changeForm)
            ExtractedCircle(color: .indigo, size: 60, text: "Indigo", originalForm: $changeForm)
        }
    }
}

//Extraction de View / vue enfant
//on se rappel que cette vue une est moule à gateau ou une recette
//on prépare ce dont on a besoin pour créer notre gateau à la suite
//ça dire qu'on ne renseigne pas de valeurs dans cette vue, uniquement lorsque je l'appel
//comme mes gateaux sont différents je ne rentre AUCUNE VALEUR
struct ExtractedCircle: View {
    //comme j'aimerais changer la couleur, la taille et le text j'ai besoin de ces propriétés:
    let color: Color
    let size: CGFloat
    let text: String
    //j'aimerais changer de forme à mon Circle à l'aide d'une condition if - else
    //dans mon cas j'utilise un Bool vue que je ne veux que 2 forme différentes
    //comme l'action ne se fait pas sur cette vue, j'ai besoin de mettre cette var en dessous en @Binding pour envoyer l'information dans la vue parente
    @Binding var originalForm: Bool
    
    var body: some View {
        //ici on pose notre condition
        //si originalForm == true ?
        //alors je récup un Circle()
        if originalForm {
            Circle()
            //comme j'ai déclarer des let/var d'un certain type
            //je place où j'en ai besoin
            //color pour ma couleur de forme
                .foregroundColor(color)
            //size pour changer la taille
                .frame(width: size, height: size)
            //l'overlay est un outil plus simple mais plus limité que la ZStack
            //ça nous de créer une couche au dessus (et non en dessus) pour afficher quelque chose
            //on est limité par la taille de notre forme, etc...
            //ici mon Text ne pourra jamais sortir de son Circle
                .overlay(
                    //text pour changer le text
                    Text(text)
                )
            //sinon je veux un Rectangle
        } else {
            Rectangle()
                .foregroundColor(color)
                .frame(width: size, height: size)
                .overlay(
                    Text(text)
                )
        }
       
    }
}

//PAS TOUCHE
struct ExtractViewExemple_Previews: PreviewProvider {
    static var previews: some View {
        ExtractViewExemple()
    }
}
