//
//  AbsenceRecorderApp.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 21/02/2024.
//

import SwiftUI

@main
struct AbsenceRecorderApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(divisions: Division.examples)
        }
    }
}
