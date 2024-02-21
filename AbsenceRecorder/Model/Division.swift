//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 21/02/2024.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    
    init(code: String, students: [Student]) {
        self.code = code
        self.students = students
    }
}
