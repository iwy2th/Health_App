// View là Protocol !
import SwiftUI

struct ExerciseView: View {
  let videoNames = ["squat", "step-up", "burpee", "sun-salute"]
  let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
  let index: Int
  var body: some View {
    VStack {
      VStack {
        Text(exerciseNames[index])
          .font(.largeTitle)
        HStack {
          Image(systemName: "1.circle")
          Image(systemName: "2.circle")
          Image(systemName: "3.circle")
          Image(systemName: "4.circle")
        }
        .font(.title2)
      }
      Text("Video Player")
      Text("Timer")
      Text("Start/Done Button")
      Text("Rating")
      Text("History button")
    }

  }
}

struct ExerciseView_Previews: PreviewProvider {
  static var previews: some View {
    ExerciseView(index: 0)
  }
}
