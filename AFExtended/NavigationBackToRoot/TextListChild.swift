//
//  TextListChild.swift
//  AFExtended
//
//  Created by Zohra Achour on 09/12/2021.
//

import SwiftUI

struct TextListChild: View {
    @Binding var backToRoot: Bool
    var number: Int
    var body: some View {
        VStack {
            Text("\(number)")
            
            Button(action: {
                backToRoot.toggle()
            }, label: {
               Text("back to root")
            })
            
        }
        
    }
}
