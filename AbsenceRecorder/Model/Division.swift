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
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static var firstNames: [String] = ["James", "Kayden", "Seb", "Freddie", "Pablo", "Johnny"]
    static var lastNames: [String] = ["Williams", "Mayfair", "Smith", "Collins", "Levenson", "Money"]
    
    static func createDivison(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for _ in 0..<size {
            var firstName: String = firstNames.randomElement()!
            var lastName: String = lastNames.randomElement()!
            let student = Student(forename: firstName, surname: lastName, birthday: Date())
            division.students.append(student)
        }
        
        return division
    }
    
     static let examples = [Division.createDivison(code: "CMsi-1", of: 10),
                           Division.createDivison(code: "DGer-3", of: 8),
                           Division.createDivison(code: "CEco-2", of: 12),
                           Division.createDivison(code: "CBio-1", of: 7),]
    
    #endif

}
