//
//  KahootQuestionTest.swift
//  AFExtended
//
//  Created by Zohra Achour on 10/12/2021.
//

import SwiftUI

//CONTEXTE:
//Je prépare des questions pour Kahoot ici
struct KahootQuestionTest: View {
    var body: some View {
        VStack {
            Text("KAHOOT!")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.purple)
            Spacer()
            
            //Une erreur sur le ForEach
            ForEach(0...3, id: \.self) { number in
                Text("\(number)")
            }

            //On joue sur la ZStack
            ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.pink)
                .frame(width: 100, height: 100)
                .background(Text(":D"))
//                Text(":D")
            }
            
            Spacer()
        }
    }
}

struct KahootQuestionTest_Previews: PreviewProvider {
    static var previews: some View {
        KahootQuestionTest()
    }
}
