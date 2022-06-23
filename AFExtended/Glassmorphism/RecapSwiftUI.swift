//
//  RecapSwiftUI.swift
//  AFExtended
//
//  Created by Zohra Achour on 22/06/2022.
//

import SwiftUI

struct RecapSwiftUI: View {
    
    @State private var changeText: Bool = false
    @State private var changeValue: Int = 0
    
    
    //ici on créer une fonction pour afficher des Rectangles de couleur différentes à l'aide d'un switch
    //lorsque je créer une fonction avec un rendu visuel, on doit assurer au code que l'on va lui envoyer une View
    //donc on met une flèche pour "promettre" au code l'envoie d'une View
    //ici j'utilise le some View pour lui que je renvoie une View quelconque
    func toto() -> some View {
        switch changeValue {
        case 1...3:
            //comme je passe par une fonction fléchée on doit obligatoirement mettre le mot clé return pour assurer notre envoie d'un composant graphique
            return Rectangle()
                .frame(width: 60, height: 60)
                .foregroundColor(.white)
        case 4...7:
            return Rectangle()
                .frame(width: 60, height: 60)
                .foregroundColor(.pink)
        case 8...10:
            return Rectangle()
                .frame(width: 60, height: 60)
                .foregroundColor(.purple)
        default:
            return Rectangle()
                .frame(width: 60, height: 60)
                .foregroundColor(.yellow)
        }
    }
    
    var body: some View {
        
        
        ZStack {
            Rectangle()
            //ternaire:
            //la valeur de changeText c'est quoi?
            //si oui on met du vert
            //sinon on met couleur menthe
                .foregroundColor(changeText ? .green : .mint )
                .ignoresSafeArea()
            VStack { // début de mon code / verticale
                
                //ensuite je peux appeler ma fonction pour afficher mon Rectangle()
                toto()
                
                
                Text("Ma valeur: \(changeValue)")
                    .foregroundColor(.white)
                
                //composant horizontale
                HStack {
                    Image(systemName: "leaf.fill")
                    //ternaire
                    //condition ? si c'est vrai : si c'est faux
                    Text(changeText ? "Eat veggies :D" : "Be the leaf !")
                }
                
                HStack {
                    //Button qui change mon State
                    Button(action: {
                        //l'action qui modifier mon State
                        //le toggle() change le State d'un Bool
                        //si mon State est a false lorsque j'appuis sur mon button le State passe à true
                        //et inversement
                        changeText.toggle()
                        
                        //met à jour changeValue en incrémenter sa valeur
                        changeValue += 1
                        
                    }, label: {
                        //aspect visuel du Button
                        Image(systemName: "bolt.fill")
                        Text("Ajouter !")
                    })
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    
                    Button("Retirer") {
                        //on met à jour changeValue
                        changeValue -= 1
                    }
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(20)
                    .foregroundColor(.white)
                }
            }
            .font(.title)
        }//fin de ma grande VStack
    }
}

struct RecapSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        RecapSwiftUI()
    }
}
