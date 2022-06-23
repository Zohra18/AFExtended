//
//  ExtractView.swift
//  AFExtended
//
//  Created by Zohra Achour on 21/06/2022.
//

import SwiftUI

struct ExtractView: View {
    var body: some View {
        VStack { //grand Stack qui englobe // ma stack mère
            //j'utilise ici mon extraction de vue (vue enfante) à l'intérieur de ma vue parente
            //c'est à ce moment la qu'on ajoute nos valeurs d'image, de nom et de couleur
            PokemonBadge(badgeName: "Leaf", badgeIcon: "leaf.fill", badgeColor: .green)
            PokemonBadge(badgeName: "Thunder", badgeIcon: "bolt.fill", badgeColor: .yellow)
            PokemonBadge(badgeName: "Flame", badgeIcon: "flame.fill", badgeColor: .red)
//            PokemonBadge()
        }
    }
}



//extraction de vue
//vue enfant
//vue réutilisable comme on veut
struct PokemonBadge: View {
    //j'ai besoin de text, d'une image et d'une couleur
    let badgeName: String
    let badgeIcon: String
    let badgeColor: Color
    
    var body: some View {
        VStack { //ma stack COMMAND + CLICK
            //j'utilise mes propriétés dans mes composants
            //ici on a besoin de String parce que c'est une image
            Image(systemName: badgeIcon)
            //de même ici parce que c'est du texte
            Text(badgeName)
        }
        .padding()
        //ici j'ajoute en dernier ma couleur de fond
        .background(badgeColor)
    }
}




//CA AFFICHE LE CANVAS ou le téléphone
//pas touche
struct ExtractView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractView()
    }
}
