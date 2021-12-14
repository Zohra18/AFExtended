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
    @ObservedObject var enumViewModel: EnumViewModel
//        var category: CategorySomething
    var body: some View {
        HStack {
            Text(category.name)
            Button(action: {
//                addCategory.toggle()
                category.chosenCategory.toggle()
                if category.chosenCategory {
                    enumViewModel.setCategory.insert(category)
//                    enumViewModel.setCategory.append(category)

                } else {
                    enumViewModel.setCategory.remove(category)
//                    enumViewModel.setCategory.remove(at: 0)
                }
               
                print(enumViewModel.setCategory)
//                print(enumViewModel.setCategory.count-1.name)
                
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
