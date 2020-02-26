//
//  LabelView.swift
//  AlarmClock
//
//  Created by Jared Kraemer on 2/20/20.
//  Copyright © 2020 Jared Kraemer. All rights reserved.
//

import SwiftUI

struct LabelView: View {
    @Binding var label: String
    var title: String

    var body: some View {
        VStack(alignment: .center) {
            NavigationView {
            Form {
//                HStack {
//                    Text("Label: ")
                    TextField("Label", text: $label)
//                }.padding()
            }.navigationBarTitle(title)
            }
        }
        .padding(.top, 64.0)
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(label: .constant("Test"), title: "Label")
    }
}
