//
//  DivisionItem.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 26/02/2024.
//

import SwiftUI

struct DivisionItem: View {
    let division: Division
    
    var body: some View {
        HStack {
            Image(systemName: "\(division.students.count).circle")
            Text("\(division.code)")
        }
    }
}

#Preview {
    DivisionItem(division: Division(code: "Test"))
}
