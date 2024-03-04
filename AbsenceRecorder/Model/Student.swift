//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 21/02/2024.
//

import Foundation

class Student: Identifiable, Codable {
    let forename: String
    let surname: String
    let birthday: Date
    let id = UUID()
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    
    #if DEBUG
    static let example = Student(forename: "Faze", surname: "Banks", birthday: Date())
    static let examples = [example]
    #endif
}
