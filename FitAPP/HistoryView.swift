import SwiftUI

struct HistoryView: View {
    let today = Date()
    let yesterday = Date().addingTimeInterval(-86400)
    
    let exercises1 = ["Stretch", "Run", "Pushup", "Abs", "Plank"]
    let exercises2 = ["Stretch", "Run", "Squat", "Pushup", "Abs", "Plank"]
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {}) {
                Image(systemName: "xmark.circle")
           }
            .font(.title)
            .padding(.trailing)
            VStack {
                Text("History")
                    .font(.title)
                    .padding()
                
                
                Form {
                    Section(
                        header:
                            Text(today.formatted(as: "MMM dd"))
                            .font(.headline)) {
                                ForEach(exercises1, id: \.self) { exercise in
                                    Text(exercise)
                                }
                            }
                    Section(
                        header:
                            Text(yesterday.formatted(as: "MMM d"))
                            .font(.headline)) {
                                ForEach(exercises2, id: \.self) { exercise in
                                    Text(exercise)
                                }
                            }
                }
            }
       }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
