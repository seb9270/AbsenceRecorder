//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 27/02/2024.
//

import SwiftUI

struct AbsenceView: View {
    let absence: Absence
    
    var body: some View {
        List(absence.studentAbsences, id: \.self.student.id) { studentAbsence in
            AbsenceItemView(studentAbsence: studentAbsence)
        }
    }
}

#Preview {
    AbsenceView(absence: Absence.example)
}
