//
//  AbsenceItemView.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 29/02/2024.
//

import SwiftUI

struct AbsenceItemView: View {
    @ObservedObject var studentAbsence: StudentAbsence
    

    
    
    var body: some View {
        HStack {
            
            Text("\(studentAbsence.student.forename)")
                .font(.title2)
            Spacer()
            if studentAbsence.isAbsent == false {
                Button("✅", action: {studentAbsence.isAbsent.toggle()})
                    .font(.title)
            }
            else {
                Button("🙅‍♂️", action: {studentAbsence.isAbsent.toggle()})
                    .font(.title)
            }
        
        }
    }
}

#Preview {
    AbsenceItemView(studentAbsence: StudentAbsence.example)
}
