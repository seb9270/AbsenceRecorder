//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 04/03/2024.
//

import Foundation

extension FileManager {
    private func getDocumentDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
