//
//  HeaderView.swift
//  Health_App
//
//  Created by Iwy2th on 14/05/2023.
//

import SwiftUI

struct HeaderView: View {
  @Binding var selectedTab: Int
  let titleText: String
  var body: some View {
    VStack {
      Text(titleText)
        .font(.largeTitle)
      HStack {
        ForEach(0 ..< Exercise.exercises.count) { index in
          let fill = index == selectedTab ? ".fill" : ""
          Image(systemName: "\(index + 1).circle\(fill)")
            .onTapGesture {
              selectedTab = index
            }
        }
      }
      .font(.title2)
    }
  }
}
struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      HeaderView(selectedTab: .constant(0), titleText: "Squat")
        .previewLayout(.sizeThatFits)
      HeaderView(selectedTab: .constant(1),titleText: "Squat")
        .preferredColorScheme(.dark)
        .environment(\.sizeCategory, .extraExtraLarge)
        .previewLayout(.sizeThatFits)
    }
  }
}
