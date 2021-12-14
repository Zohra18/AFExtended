//
//  ListModifsTest.swift
//  AFExtended
//
//  Created by Zohra Achour on 13/12/2021.
//

import SwiftUI

struct ListModifsTest: View {
    //mes données
    @State private var allCategories = [
        Category(id: 0, name: "Rock", chosenCategory: false),
        Category(id: 1, name: "Metal", chosenCategory: false),
        Category(id: 2, name: "Rap", chosenCategory: false),
        Category(id: 3, name: "Classic", chosenCategory: false)
    ]
    
    var body: some View {
        NavigationView {
            LazyHGrid(rows: [GridItem(.fixed(200))]) {
                //ma liste d'ojbets
                ForEach(allCategories.indices, id: \.self) { index in
                    NavigationLink(destination: Color.orange) {
                        HStack {
                            Text(allCategories[index].name)
                            Button(action: {
                                allCategories.remove(at: index)
                            }, label: {
                                Image(systemName: "minus.circle.fill")
                                    .foregroundColor(.red)
                            })
                               
                        }
                    }
                }
                
            }
        }
            //on appel la méthode delete sur le ForEach
//            .onDelete(perform: deleteItem)
        }
//    }
    //ma fonction de delete
//    private func deleteItem(at indexSet: IndexSet) {
//        allCategories.remove(atOffsets: indexSet)
//    }
    
}

struct ListModifsTest_Previews: PreviewProvider {
    static var previews: some View {
        ListModifsTest()
    }
}
