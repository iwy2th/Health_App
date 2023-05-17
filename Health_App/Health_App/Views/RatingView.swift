//
//  RatingView.swift
//  Health_App
//
//  Created by Iwy2th on 15/05/2023.
//

import SwiftUI

struct RatingView: View {
  @Binding var rating : Int
  let maximumRating = 5
  let onColor = Color.yellow
  let offColor = Color.gray
    var body: some View {
      HStack {
        ForEach(1 ..< maximumRating + 1) { index in
          Image(systemName: "trophy.fill")
            .foregroundColor(
              index > rating ? offColor : onColor)
            .onTapGesture {
              rating = index
            }
            .font(.largeTitle)
        }
      }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
      RatingView(rating: .constant(3))
        .previewLayout(.sizeThatFits)
    }
}
