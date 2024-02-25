//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 21/02/2024.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division]
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(divisions, id: \.self.code) { division in
                Text("\(division.code)")
                    .padding()
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = Calendar.current(byAdding: .day, value: -1, to: currentDate) }) {
                        Image(systemName: "arrow.backward")
                    }
                }
            }
        }
    }
}
    
#Preview {
    ContentView(divisions: Division.examples)
}
    
    
    
