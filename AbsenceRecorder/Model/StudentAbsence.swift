//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 01/03/2024.
//

import Foundation

class StudentAbsence: ObservableObject, Codable {
    let student: Student
    @Published var isAbsent: Bool
    let id  = UUID()
    
        
    init(student: Student) {
        self.student = student
        isAbsent = false
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        student = try container.decode(Student.self, forKey: .student)
        isAbsent = try container.decode(Bool.self, forKey: .isAbsent)
    }
    
    private enum CodingKeys: CodingKey {
        case student, isAbsent
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(student, forKey: .student)
        try container.encode(isAbsent, forKey: .isAbsent)
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student(forename: "Faze", surname: "Banks", birthday: Date()))
    #endif
}
