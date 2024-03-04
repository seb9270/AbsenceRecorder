//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Micko, Sebastian (AMM) on 03/03/2024.
//

import XCTest
@testable import AbsenceRecorder

final class DivisionTests: XCTestCase {

    func testGetAbsenceDivisionWithAbsenceOnThatDayReturnsAbsence() throws {
        //arrange
        let division = Division(code: "TestDiv")
        let absence2 = Absence(date: Date(), students: Student.examples)
        let absence1 = Absence(date: Date(timeIntervalSinceNow: 100000),students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        //act
        let actual = division.getAbsence(for: Date(timeIntervalSinceNow: 100))
        
        //assert
        XCTAssertNotNil(actual)
        if let actualNotNil = actual {
            XCTAssertEqual(actualNotNil.takenOn, absence2.takenOn)
        }
    }

}
