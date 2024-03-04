//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 03/03/2024.
//

import Foundation

class Absence: Codable {
    let takenOn: Date
    var studentAbsences: [StudentAbsence]
    let id = UUID()
    
    init(date: Date, students: [Student]) {
        takenOn = date
        studentAbsences = students.map { StudentAbsence(student: $0)}
    }
    
    #if DEBUG
    static let example = Absence(date: Date(), students: Student.examples)
    #endif
}
