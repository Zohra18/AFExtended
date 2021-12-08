//
//  TextListRoot.swift
//  Smoothie
//
//  Created by Zohra Achour on 08/12/2021.
//

import SwiftUI

struct TextListRoot: View {
    @State private var root = false
    @State private var globalInt: Int? //<- optionnel parce que aucune valeur
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




struct TextListRoot_Previews: PreviewProvider {
    static var previews: some View {
        TextListRoot()
    }
}
