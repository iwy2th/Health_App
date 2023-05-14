//
//  HeaderView.swift
//  Health_App
//
//  Created by Iwy2th on 14/05/2023.
//

import SwiftUI

struct HeaderView: View {
  let exerciseName: String
  var body: some View {
    VStack {
      Text(exerciseName)
        .font(.largeTitle)
      HStack {
        Image(systemName: "1.circle")
        Image(systemName: "2.circle")
        Image(systemName: "3.circle")
        Image(systemName: "4.circle")
      }
      .font(.title2)
    }
  }
}
struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      HeaderView(exerciseName: "Squat")
        .previewLayout(.sizeThatFits)
      HeaderView(exerciseName: "Squat")
        .preferredColorScheme(.dark)
        .environment(\.sizeCategory, .extraExtraLarge)
        .previewLayout(.sizeThatFits)
    }
  }
}
