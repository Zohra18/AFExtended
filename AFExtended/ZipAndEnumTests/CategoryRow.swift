//
//  CategoryRow.swift
//  AFExtended
//
//  Created by Zohra Achour on 09/12/2021.
//

import SwiftUI

struct CategoryRow: View {
//        @Binding var addCategory: Bool
    @Binding var category: Category
//        var category: CategorySomething
    var body: some View {
        HStack {
            Text(category.name)
            Button(action: {
//                addCategory.toggle()
                category.chosenCategory.toggle()
                
            }, label: {
                Image(systemName: category.chosenCategory ? "bolt.fill" : "bolt")
            })
        }
    }
}

//struct CategoryRow_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryRow()
//    }
//}
