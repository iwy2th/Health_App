/** Một cấu trúc là một kiểu dữ liệu được đặt tên chứa các thuộc tính và phương thức
 + Nhìn vào ContentView bạn có thể nghĩ View nó được kế thừa từ View nhưng không ! Trong Swift cấu trúc không có tính kế thừa . View là một giao thức, ContentView đang tuân theo giao thức này
 + Cấu trúc ContentView_Previews đó là những gì sẽ xuất hiện ở màn hình Canvas bên phải , nếu không có ContentView thì sẽ không có gì trong Canvas **/
import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      WelcomeView()
      ForEach(0 ..< Exercise.exercises.count) { index in
        ExerciseView(index: index)
      }
      Text("hihi")

    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
