//
//  EnumZipTest.swift
//  AFExtended
//
//  Created by Zohra Achour on 08/12/2021.
//

import SwiftUI

//CONTEXTE:
//Une apprenante cherchait à afficher tous les cases d'un enum dans un ForEach
//Puis cliquer sur chacun des éléments afin d'activer un Bool pour changer d'état sur une image
//J'ai du passer par une struct pour palier à ce problème
//Plusieurs tests on été effectué et tout est laissé en plan
struct EnumZipTest: View {
    @State private var addedCategory = false
    @State private var myCategory: Category?
    
    @State private var allCategories = [
        Category(name: "Rock", chosenCategory: false),
        Category(name: "Metal", chosenCategory: false),
        Category(name: "Rap", chosenCategory: false),
        Category(name: "Classic", chosenCategory: false)
    ]
    
    @State private var catSet: [CategorySomething] = []
    var body: some View {
        VStack {
            //DOESN'T WORK
//                        ForEach(Array(zip(CategorySomething.allCases.indices, CategorySomething.allCases)), id: \.0) { index, cat in
//
//                            CategoryRow(addCategory: $addedCategory, category: allCategories[index])
//                        }
            
            //ENUM
//            ForEach(CategorySomething.allCases, id: \.self) { cat in
//                CategoryRow(category: cat)
//                    .onTapGesture {
//                        addedCategory.toggle()
//                        catSet.append(cat)
//                        print(catSet)
//                    }
//            }
            
            
            //            ForEach(Array(zip(allCategories.indices, allCategories)), id: \.0) { index, cat in
            //                CategoryRow(category: $allCategories[index])
            //            }
            
            //STRUCTURE
            //STATE+STATE pas ouf
            //            ForEach(allCategories) { cat in
            //                CategoryRow(category: cat)
            //            }
            
            //BINDING+INDEX
            ForEach(allCategories.indices) { index in
                CategoryRow(category: $allCategories[index])
            }
            
        }
    }
}

struct EnumZipTest_Previews: PreviewProvider {
    static var previews: some View {
        EnumZipTest()
    }
}
