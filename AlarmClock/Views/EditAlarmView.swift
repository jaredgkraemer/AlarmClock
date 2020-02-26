//
//  EditAlarmView.swift
//  AlarmClock
//
//  Created by Jared Kraemer on 2/17/20.
//  Copyright © 2020 Jared Kraemer. All rights reserved.
//

import SwiftUI

struct EditAlarmView: View {

    @Environment(\.presentationMode) var presentationMode
    @Binding var alarm: Alarm
    var formField = "Label"
//    @State var currentTime = Date()


    var body: some View {
        NavigationView {
            VStack {
                DatePicker("", selection: self.$alarm.time, displayedComponents: .hourAndMinute).labelsHidden()
                Form {
                    NavigationLink(destination: LabelView(label: self.$alarm.label), title: formField) {
                        HStack {
                            Text(formField)
                            Spacer()
                            Text("\(alarm.label)")
                        }.padding()
                    }
                    
                    HStack {
                        Text("Snooze Length")
                        Spacer()
                        Text("\(String(alarm.snoozeLen)) min")
                    }.padding()
                    
                    HStack {
                       Text("Snooze")
                       Spacer()
                       Toggle("", isOn: self.$alarm.snooze).labelsHidden()
                    }.padding()
                }
            }
            .navigationBarTitle("Edit Alarm")
            .navigationBarItems(
                leading: Button(
                   action: { self.presentationMode.wrappedValue.dismiss() },
                   label: { Text("Cancel") }
                ),
                trailing: Button(
                   action: { return },
                   label: { Text("Save") }
                )
            )
        }
    }
}

struct EditAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        EditAlarmView(alarm: .constant(Alarm(label: "test")))
    }
}
