//
//  ContentView.swift
//  AlarmClock
//
//  Created by Jared Kraemer on 2/17/20.
//  Copyright © 2020 Jared Kraemer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showAddAlarmModal = false
    @State var showEditAlarmModal = false
//    var alarmList = [
    @State var alarm = Alarm(label: "This is a label")
//    ]

    var body: some View {
        NavigationView {
            List {
//              NavigationLink(destination: EditAlarmView(alarm: alarm)) {
                AlarmCellView(alarm: self.$alarm)
                    .onTapGesture { self.showEditAlarmModal.toggle() }
                    .sheet(isPresented: self.$showEditAlarmModal, content: { EditAlarmView(alarm: self.$alarm) })
            }
            .navigationBarTitle("Alarms")
            .navigationBarItems(trailing:
                Button(
                    action: { self.showAddAlarmModal.toggle() },
                    label: { Text("Add") }
                )
            )
        }
        .sheet(isPresented: $showAddAlarmModal, content: { AddAlarmView() })
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
