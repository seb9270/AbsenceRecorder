//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 27/02/2024.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DivisionsView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "pencil.and.list.clipboard")
                    Text("Statistics View")
                }
        }
    }
}

#Preview {
    RootTabView()
}
