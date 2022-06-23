//
//  CorrectionBGColor.swift
//  AFExtended
//
//  Created by Zohra Achour on 21/06/2022.
//

import SwiftUI

struct CorrectionBGColor: View {
    //déclarer une var State de type color
    @State private var myColor: Color = .orange
    
    var body: some View {
        //on change la couleur du fond donc on a besoin d'une ZStack
        ZStack {
            
            //j'utilise ma var myColor comme couleur de fond
            myColor.ignoresSafeArea()
            
            //je peux également utiliser un Rectangle()
//            Rectangle()
//                .foregroundColor(myColor)
//                .ignoresSafeArea()
            
            //on met horizontalement nous Buttons
            HStack {
                //BUTTON RED
                //Button complexe pour faire image+text
                Button(action: {
                    //je met à jour ma couleur comme un Swift -> c'est ça l'action
                    myColor = .red
                }, label: { //l'aspect visuel du button
                    //la tronche de mon button
                    Image(systemName: "bolt.fill")
                    Text("Red")
                })
                //on utilise les modifiers pour créer une zone clickable visible
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(20)
                //BONUS BONUS BONUS BONUS
                //on souhaite ajouter un encadrer à notre button pour savoir lequel est sélectionné
                //on utilise l'overlay -> une couche qui vient se placer sur notre button, cette couche prend la même forme/taille que le composant sur lequel vous l'utilisez
                .overlay(RoundedRectangle(cornerRadius: 20)
                         //ici on pose une question à myColor
                         //est-tu de la couleur .red ?
                         //si oui on applique une couleur à notre ligne (stroke)
                         //sinon la couleur sera invisible/transparente
                    .stroke(myColor == .red ? .white : .clear, lineWidth: 2)
                    )
                
                
                //BUTTON GREEN
                //Button complexe pour faire image+text
                Button(action: {
                    //action
                    myColor = .green
                }, label: { //l'aspect visuel du button
                    //la tronche de mon button
                    Image(systemName: "bolt.fill")
                    Text("Green")
                })
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(20)
                //BONUS BONUS BONUS BONUS
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(myColor == .green ? .white : .clear, lineWidth: 2)
                    )
                
                //BUTTON BLUE
                //Button complexe pour faire image+text
                Button(action: {
                    //action
                    myColor = .blue
                }, label: { //l'aspect visuel du button
                    //la tronche de mon button
                    HStack {
                        Image(systemName: "bolt.fill")
                        Text("Blue")
                    }
                })
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                //BONUS BONUS BONUS BONUS
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(myColor == .blue ? .white : .clear, lineWidth: 2)
                    )
            }
        }
    }
}

struct CorrectionBGColor_Previews: PreviewProvider {
    static var previews: some View {
        CorrectionBGColor()
    }
}
