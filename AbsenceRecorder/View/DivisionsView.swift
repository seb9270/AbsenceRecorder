//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 21/02/2024.
//

import SwiftUI

struct DivisionsView: View {
    @State private var currentDate: Date = Date()
    @EnvironmentObject var state: StateController
    
    var body: some View {
        NavigationView {
            List(state.divisions, id: \.self.code) { division in
                NavigationLink(destination: AbsenceView(division: division)) {
                    DivisionItem(division: division)
                }
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: { currentDate = currentDate.nextDay()}) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }
}
    
#Preview {
    DivisionsView()
        .environmentObject(StateController())
}
    
    
    
