//
//  OptionalBindingTest.swift
//  AFExtended
//
//  Created by Zohra Achour on 08/12/2021.
//

import SwiftUI

struct OptionalBindingTest: View {
    @State var myImage: UIImage?
//    @State var myUnwrappedImage
    var body: some View {
        VStack {
            Text("something")
//            if let myUnwrappedImage = myImage {
//                NavigationLink(destination: OptionalBindingDestination(myPicture: myUnwrappedImage), label: {
//                    Text("Send Image to Destination")
//                })
//            }
                Image("")
                .aspectRatio(0.8, contentMode: .fill)
        }
        
    }
}

struct OptionalBindingDestination: View {
    @Binding var myPicture: UIImage
    var body: some View {
        Image(uiImage: myPicture)
    }
}






struct OptionalBindingTest_Previews: PreviewProvider {
    static var previews: some View {
        OptionalBindingTest(myImage: UIImage())
    }
}
