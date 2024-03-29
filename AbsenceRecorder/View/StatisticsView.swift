//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 27/02/2024.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    
    var body: some View {
        VStack {
            List(state.divisions, id: \.self.code) { division in
                VStack {
                    Spacer()
                    Text("\(division.code)")
                    Spacer()
                    Text("Quantity: \(division.students.count)")
                    Spacer()
                }
            }
        }

    }
}

#Preview {
    StatisticsView()
        .environmentObject(StateController())
}
