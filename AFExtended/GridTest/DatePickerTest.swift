//
//  DatePickerTest.swift
//  AFExtended
//
//  Created by Zohra Achour on 14/12/2021.
//

import SwiftUI

struct DatePickerTest: View {
    @State private var test = Date()
    var body: some View {
        VStack {
            DatePicker("My Date", selection: $test)
                .datePickerStyle(.compact)
        }
    }
}

struct DatePickerTest_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerTest()
    }
}
