import SwiftUI

@main
struct MyApp: App {
   
    

    var body: some Scene {
        WindowGroup {
            Intro()
                .preferredColorScheme(.dark)
                .accentColor(.white)
                .navigationViewStyle(StackNavigationViewStyle())
            
        }
       
    }
}


