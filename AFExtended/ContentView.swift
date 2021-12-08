//
//  ContentView.swift
//  AFExtended
//
//  Created by Zohra Achour on 29/11/2021.
//

import SwiftUI

struct ContentView: View {
    var link = "https://apple.com"
    var body: some View {
        VStack {
            Text("\(link)")
            Text(.init(link))
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
