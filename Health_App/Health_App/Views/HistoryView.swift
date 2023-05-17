// DateFormatter "yyyy-MM-dd HH:mm:ss" "2023 05 15 16:30:00"
import SwiftUI

struct HistoryView: View {
  @Binding var showHistory: Bool
  let history = HistoryStore()
  var body: some View {
    ZStack (alignment: .topTrailing){
      Button(action: {
        showHistory.toggle()
      }) {
        Image(systemName: "xmark.circle")
      }
      .font(.title)
      .padding(.trailing)
      VStack {
        Text(NSLocalizedString("History", comment: "view user activity"))
          .font(.title)
          .padding()
        Form {
          ForEach(history.exerciseDays) {
            day in
            Section(header: Text(day.date.formatted(as: "MMM d"))
              .font(.headline)) {
                ForEach(day.exercises, id: \.self) {
                  exercise in
                  Text(exercise)
                }
              }
          }
        }
      }
    }
  }
}

struct HistoryView_Previews: PreviewProvider {
  static var previews: some View {
    HistoryView(showHistory: .constant(true))
  }
}
