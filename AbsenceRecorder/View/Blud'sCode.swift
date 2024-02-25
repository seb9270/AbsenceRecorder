//
//  Blud'sCode.swift
//  AbsenceRecorder
//
//  Created by Micko, Sebastian (AMM) on 25/02/2024.
//

import SwiftUI

struct Blud'sCodeView: View {
    var body: some View {
        VStack {
           ()
                .fill(.blue)
               .padding()
  .overlay(
                    Image(Name: "figure.archery")
        .font(.system(size: 144))
                        .foregroundColor(.white)
                )

            Text("Archery!")
                .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Blud'sCodeView()
    }
}
