//
//  TextListRoot.swift
//  Smoothie
//
//  Created by Zohra Achour on 08/12/2021.
//

import SwiftUI

//CONTENTE:
//Détourner le bug existant avec le ForEach qui n'arrive pas à faire correspondre
//les éléments de du tableau avec la View de destination
//On passe donc par une var global pour la faire correspondre avec l'élément cliquer dans le ForEach
struct TextListRoot: View {
    @State private var root = false
    @State private var globalInt: Int?
    var body: some View {
        NavigationView {
            VStack {
                ForEach(0...5, id: \.self) { number in
                        Text("\(number)")
                            .onTapGesture {
                                globalInt = number
                                root.toggle()
                            }
                }
                //déballe avec if let
                if let unwrappedGlobalInt = globalInt {
                    NavigationLink(destination: TextListChild(backToRoot: $root, number: unwrappedGlobalInt), isActive: $root) {
                        EmptyView()
                    }
                }
            }
        }
    }
}

struct TextListRoot_Previews: PreviewProvider {
    static var previews: some View {
        TextListRoot()
    }
}
