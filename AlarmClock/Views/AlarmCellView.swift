//
//  SwiftUIView.swift
//  AlarmClock
//
//  Created by Jared Kraemer on 2/17/20.
//  Copyright © 2020 Jared Kraemer. All rights reserved.
//

import SwiftUI

struct AlarmCellView: View {

    @Binding var alarm: Alarm
//    @State var : Bool = false

    var body: some View {
        HStack() {
            VStack(alignment: .leading) {
                Text(alarm.getTimeStr()).font(.largeTitle)
                Text(alarm.label).font(.subheadline)
            }
            Spacer()
            Toggle("", isOn: self.$alarm.isActive).labelsHidden()
        }.padding()
    }
}

struct AlarmCellView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmCellView(alarm: .constant(Alarm(label: "test")))
    }
}
