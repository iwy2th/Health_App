//
//  HistoryView.swift
//  Health_App
//
//  Created by Iwy2th on 15/05/2023.
//

import SwiftUI

struct HistoryView: View {
  let today = Date()
  let yesterday = Date().addingTimeInterval(-86400)
  let exercise1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
  let exercise2 = ["Squat", "Step Up", "Burpee"]
  var body: some View {
    VStack {
      Text("History")
        .font(.title)
        .padding()
      Form {
        Section(header: Text(today.formatted(as: "MMM dd"))
          .font(.headline)){
            
          }
        Section(header: Text(yesterday.formatted(as: "MMM dd"))
          .font(.headline)){

          }
      }

    }
  }
}

struct HistoryView_Previews: PreviewProvider {
  static var previews: some View {
    HistoryView()
  }
}
