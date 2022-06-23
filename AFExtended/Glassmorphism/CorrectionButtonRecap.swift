//
//  CorrectionButtonRecap.swift
//  AFExtended
//
//  Created by Zohra Achour on 22/06/2022.
//

import SwiftUI

//la vue parente réceptionne l'info
struct CorrectionButtonRecap: View {
    //le state affiche le résultat envoyé par le @Binding / vue enfant
    @State private var backgroundColor = Color.white
    var body: some View {
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()
            HStack {
                //j'appel mes Buttons pour les voir
                ExtractedRecapButton(buttonName: "bolt.fill", buttonColor: .orange, anotherColor: .indigo, newColor: $backgroundColor)
                ExtractedRecapButton(buttonName: "leaf.fill", buttonColor: .green, anotherColor: .purple, newColor: $backgroundColor)
                ExtractedRecapButton(buttonName: "drop.fill", buttonColor: .cyan, anotherColor: .mint, newColor: $backgroundColor)
                ExtractedRecapButton(buttonName: "flame.fill", buttonColor: .red, anotherColor: .brown, newColor: $backgroundColor)
            }
        }
    }
}


//la vue enfant envoie une info
struct ExtractedRecapButton: View {
    let buttonName: String
    let buttonColor: Color
    let anotherColor: Color
    @Binding var newColor: Color
    
    var body: some View {
        Button(action: {
            //on change la couleur de fond
            newColor = anotherColor
        }, label: {
            Image(systemName: buttonName)
                .foregroundColor(.white)
        })
        .padding()
        .background(buttonColor)
        .cornerRadius(20)
    }
}

struct CorrectionButtonRecap_Previews: PreviewProvider {
    static var previews: some View {
        CorrectionButtonRecap()
    }
}

