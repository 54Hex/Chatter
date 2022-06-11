import SwiftUI

struct TB: View {
    var body: some View {
        TabView {
            Main()
                .tabItem {
                    Label("Main", systemImage: "person.fill")
                }
            QView()
                .tabItem {
                    Label("Questions", systemImage: "bubble.left.and.bubble.right.fill")
                }
            Trainer()
                .tabItem {
                    Label("Learn", systemImage: "book.fill")
                }
            

        }.accentColor(Color("Purple"))
    }
}



struct Main: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
    }
}




// Previews
struct TB_Previews: PreviewProvider {
    static var previews: some View {
        TB()
            .previewInterfaceOrientation(.landscapeLeft)
            .preferredColorScheme(.dark)
            .navigationViewStyle(StackNavigationViewStyle())
    }
}

