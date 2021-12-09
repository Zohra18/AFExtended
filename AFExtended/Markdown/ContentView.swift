//
//  ContentView.swift
//  AFExtended
//
//  Created by Zohra Achour on 29/11/2021.
//

import SwiftUI

//CONTEXTE:
//Un groupe cherchait à mettre des liens de site dans leur Text
//Ils ont du faire des recherches sur le Markdown
//Si dessous est le résultat des recherches et de la mise en place
struct ContentView: View {
    @State private var informations = [
        MarkdownInfo(id: 0, info: "Notice that if want to add an **url link to a text** I can simply put the link in the String but it isn't active at all, it's pure text.", urlLink: "https://apple.com", image: "xmark.circle.fill", color: .red),
        MarkdownInfo(id: 1, info: "If I want this link to be usable I must use **Markdown** to launch the website when tapped.", urlLink: "https://apple.com", image: "checkmark.circle.fill", color: .green),
        MarkdownInfo(id: 2, info: "Finally, I can still use **Markdown** in order add a link and a personalized description.", urlLink: "", image: "checkmark.circle.fill", color: .green)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 50) {
            ForEach(informations) { info in
                MarkdownInfoRow(info: info)
            }
        }
        .padding(15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


