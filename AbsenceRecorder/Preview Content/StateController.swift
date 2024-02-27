//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 27/02/2024.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
