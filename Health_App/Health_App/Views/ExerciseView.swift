// View là Protocol !
import SwiftUI
import AVKit

struct ExerciseView: View {
  let index: Int
  let interval: TimeInterval = 30
  var body: some View {
    GeometryReader { geometry in
      VStack {
        HeaderView(titleText: Exercise.exercises[index].exerciseName)
        if let url = Bundle.main.url(
          forResource: Exercise.exercises[index].videoName,
          withExtension: "mp4") {
          VideoPlayer(player: AVPlayer(url: url))
            .frame(height: geometry.size.height * 0.45)
        } else {
          Text("Couldn't find \(Exercise.exercises[index].videoName).mp4")
            .foregroundColor(.red)
        }
        Text(Date().addingTimeInterval(interval), style: .timer)
        
          .font(.system(size: 90))
        Button(NSLocalizedString("Start/Done", comment: "begin exercise / mark as finished")) {

        }
        .font(.title3)
        .padding()
        RatingView()
        Spacer()
        Button(NSLocalizedString("History", comment: "view user activity")) {

        }
        .padding(.bottom)
      }
    }

  }
}

struct ExerciseView_Previews: PreviewProvider {
  static var previews: some View {
    ExerciseView(index: 0)
  }
}


