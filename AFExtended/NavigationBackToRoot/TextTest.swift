//
//  TextTest.swift
//  AFExtended
//
//  Created by Zohra Achour on 18/05/2022.
//

import SwiftUI

struct TextTest: View {
    @State private var selectionTab = 0
    var body: some View {
        ZStack {
            
            if selectionTab == 1 {
                Color.orange.ignoresSafeArea()
            } else if selectionTab == 2 {
                Color.purple.ignoresSafeArea()
            } else {
                TextListRoot()
            }
            
            
            HStack {
                VStack(spacing: 30) {
                    Button(action: {
                        selectionTab = 0
                    }, label: {
                        Image(systemName: "bolt.fill")
                    })
                    .foregroundColor(selectionTab == 0 ? .green : .gray)
                    
                    Button(action: {
                        selectionTab = 1
                    }, label: {
                        Image(systemName: "flame.fill")
                    })
                    .foregroundColor(selectionTab == 1 ? .green : .gray)
                    
                    Button(action: {
                        selectionTab = 2
                    }, label: {
                        Image(systemName: "drop.fill")
                    })
                    .foregroundColor(selectionTab == 2 ? .green : .gray)
                }
                .font(.largeTitle)
                Spacer()
            }
            
        }
    }
}

struct TextTest_Previews: PreviewProvider {
    static var previews: some View {
        TextTest()
            .previewInterfaceOrientation(.landscapeLeft)
            
    }
}
