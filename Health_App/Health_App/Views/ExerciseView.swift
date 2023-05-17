// View là Protocol !
import SwiftUI
import AVKit

struct ExerciseView: View {
  @Binding var selectedTab: Int
  @State private var rating = 0
  @State var showHistory = false
  @State private var showSuccess = false
  var lastExercise: Bool {
    index + 1 == Exercise.exercises.count
  }
  let index: Int
  let interval: TimeInterval = 30
  var body: some View {
    GeometryReader { geometry in
      VStack {
        HeaderView(selectedTab: $selectedTab, titleText: Exercise.exercises[index].exerciseName)
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
        HStack(spacing: 150) {
          Button("Start Exercise") {  }
          Button("Done") {
            if lastExercise {
              showSuccess.toggle()
            } else {
              selectedTab += 1
            }
          }
          .sheet(isPresented: $showSuccess) {
            SuccessView( selectedTab: $selectedTab)
          }
        }
        .font(.title3)
        .padding()
        RatingView(rating: $rating)
        Spacer()
        Button(NSLocalizedString("History", comment: "view user activity")) {
          showHistory.toggle()
        }
        .sheet(isPresented: $showHistory, content: {
          HistoryView(showHistory: $showHistory)
        })
        .padding(.bottom)
      }
    }

  }
}

struct ExerciseView_Previews: PreviewProvider {
  static var previews: some View {
    ExerciseView(selectedTab: .constant(3), index: 3)
  }
}


