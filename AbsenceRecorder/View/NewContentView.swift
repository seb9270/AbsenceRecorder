//
//  NewContentView.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 25/02/2024.
//

import SwiftUI

struct NewContentView: View {
    @State var divisions = Division.testArray
    
    var body: some View {
        Text("Division:", divisions[0])
    }
}

#Preview {
    NewContentView()
}
