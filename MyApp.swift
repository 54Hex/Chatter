import SwiftUI

@main
struct MyApp: App {
   
    @StateObject var viewRouter = ViewRouter()

    var body: some Scene {
        WindowGroup {
            ViewController().environmentObject(ViewRouter())
                .preferredColorScheme(.dark)
                .accentColor(.white)  
        }
       
    }
}


