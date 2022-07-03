import SwiftUI
import AVKit 

struct TB: View {
    var body: some View {
        TabView {
            Main()
                .tabItem {
                    Label("Home", systemImage: "person.fill")
                }
            BotView()
                .tabItem {
                    Label("ChatterBot", systemImage: "bubble.left.and.bubble.right.fill")
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
        ScrollView {
            VStack {
                Text("Home")
                    .font(.system(size: 40, weight: .bold, design: .default))
                    .offset(x: -120)
    
                Text("What would you like to learn today?")
                    .font(.system(size: 25, weight: .light, design: .default))
                    .offset(x: -100)
            }
        }
    }
}




// Previews
struct TB_Previews: PreviewProvider {
    static var previews: some View {
        TB()
//            .previewInterfaceOrientation(.landscapeLeft)
            .preferredColorScheme(.dark)
            .navigationViewStyle(StackNavigationViewStyle())
    }
}
