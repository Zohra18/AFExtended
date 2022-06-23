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
    @State private var selectedID: Int? = 0
//    @Obser var mySet: Set<Category> = []
    @StateObject var enumViewModel = EnumViewModel()
    @State private var allCategories = [
        Category(id: 0, name: "Rock", chosenCategory: false),
        Category(id: 1, name: "Metal", chosenCategory: false),
        Category(id: 2, name: "Rap", chosenCategory: false),
        Category(id: 3, name: "Classic", chosenCategory: false)
    ]
    
    var myDatas = ["1", "2", "3"]
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
            VStack {
                
                
                
                ForEach(allCategories) { toto in
                    HStack {
                        Text(toto.name)
                        Text(toto.id.description)
                        
                        Text("\(selectedID?.description ?? 99.description)")
                        Text(toto.chosenCategory.description)
                        Button(action: {
//                            if var chosenID = selectedID {
                            selectedID = toto.id
                                if selectedID == toto.id {
                                    toto.chosenCategory.toggle()
                                    
                                }
//                            }
                            
//                            if let chosenID = selectedID {
//                                toto.id = chosenID
//                                toto.id == chosenID {
                                    
//                                }
//                            }
                        }, label: {
                            Image(systemName:  toto.chosenCategory ? "bolt.fill" : "bolt")
                        })
                    }
                }
//                ForEach(allCategories.indices) { index in
//                    CategoryRow(category: $allCategories[index], enumViewModel: enumViewModel)
//                }
                
                
                ForEach(enumViewModel.setCategory, id: \.id) { addedItem in
                    Text(addedItem.name)
                }
                Button(action: {
                    print("view parente", enumViewModel.setCategory)
                }, label: {
                    Text("update check")
                })
            }
            
        }
    }
}

struct EnumZipTest_Previews: PreviewProvider {
    static var previews: some View {
        EnumZipTest()
    }
}
