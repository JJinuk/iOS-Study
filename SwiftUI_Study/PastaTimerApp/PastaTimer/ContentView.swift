import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        TimerView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
