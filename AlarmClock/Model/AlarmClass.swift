//
//  AlarmClass.swift
//  AlarmClock
//
//  Created by Jared Kraemer on 2/17/20.
//  Copyright © 2020 Jared Kraemer. All rights reserved.
//

import Foundation

class Alarm: Identifiable {
    var id = UUID()
    var time = Date()
    var isActive = false
    var snooze = true
    var snoozeLen = 10
    var label: String

    init(label: String = "") {
        self.label = label
    }
    
    func getTimeStr() -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: self.time)
    }
}
