//
//  RatingView.swift
//  Health_App
//
//  Created by Iwy2th on 15/05/2023.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
      HStack {
        ForEach(0 ..< 5) { _ in
          Image(systemName: "trophy")
            .foregroundColor(.gray)
            .font(.largeTitle)
        }
      }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
        .previewLayout(.sizeThatFits)
    }
}
