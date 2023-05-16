//
//  ImageExtension.swift
//  Health_App
//
//  Created by Iwy2th on 15/05/2023.
//

import SwiftUI

import UIKit
extension Image {
  func resizedToFill(width w : CGFloat, height h: CGFloat) -> some View {
    return self
      .resizable()
      .aspectRatio(contentMode: .fill)
      .frame(width: w, height: h)
  }
}
