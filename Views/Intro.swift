import SwiftUI
//import UIKit


// controller (bc navigation view suckssss)
struct ViewController: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            Intro()
        case .page2:
            Intro2()
        case .page3:
            TB()
               
        }
        
    }
}


enum Page {
    case page1
    case page2
    case page3
}


class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .page1
}

// next button, ofc...
struct NextButton: View {
    var body: some View {
        Text("Next")
            .font(.system(size: 30, weight: .semibold ,design: .rounded))
            .foregroundColor(.white)
            .padding()
            .background(Color("Charcoal"))
            .cornerRadius(20)
        
        
    }
}

// custom colors
struct CC {
    static let Purple = Color("Purple")
    static let Yellow = Color("Yellow")
    static let Charcoal = Color("Charcoal")
    static let DG = Color("DG")
}

//---------------------------------------------------------------//
struct Intro: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
            VStack {
                Image("ChatterV2C")
                    .resizable()
                    .frame(width: 500, height: 500, alignment: .center)
                HStack {
                    Text("Welcome to Chatter")
                        .font(.system(size: 45, weight: .semibold, design: .rounded))
                        .foregroundColor(Color("Yellow"))
                    Image(systemName: "message.fill")
                        .font(.system(size: 45))
                        .foregroundColor(Color("Purple"))
                }
                .offset(y: -100)
                
                Button(action: {
                    viewRouter.currentPage = .page2
                }) {
                    NextButton()
                }
            }
    }
}




struct Intro2: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        ZStack {
            Text("Features: what can you do?")
                .font(.system(size: 35, weight: .bold, design: .rounded))
                .offset(x: -80, y: -410)
            
            VStack {
                Image(systemName: "person.fill.questionmark")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                    .padding()
                
                Text("Ask Questions")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                
            }
            .frame(width: 250, height: 200)
            .background(Color("Charcoal"))
            .cornerRadius(20)
            .offset(x: -170, y: -280)
            
            
            VStack {
                Image(systemName: "bubble.left.and.bubble.right.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                    .padding()
                
                Text("ChatBot")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                
            }
            .frame(width: 320, height: 200)
            .background(Color("Charcoal"))
            .cornerRadius(20)
            .offset(x: 130, y: -280)
            
            
            VStack {
                Image(systemName: "person.3.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                    .padding()
                
                Text("Communicate")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                
            }
            .frame(width: 350, height: 200)
            .background(Color("Charcoal"))
            .cornerRadius(20)
            .offset(x: -120, y: -60)
            
            VStack {
                Image(systemName: "book.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                    .padding()
                
                Text("Learn")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                
            }
            .frame(width: 220, height: 200)
            .background(Color("Charcoal"))
            .cornerRadius(20)
            .offset(x: 180 , y: -60)
            
            
            
            Group {
                HStack {
                    VStack {
                        HStack {
                            Text("The Team")
                                .font(.system(size: 35, weight: .semibold, design: .rounded))
                                .offset(x: -50, y: 10)
                        }
                        
                        HStack {
                            Image(systemName: "person.fill")
                                .font(.system(size: 30))
                            Text("James")
                                .font(.system(size: 30, weight: .semibold, design: .rounded))
                        }.offset(x: 0)
                            .frame(width: 250, height: 50)
                            .background(Color("DG"))
                            .cornerRadius(10)
                            .offset(x: -10, y: -5)
                        
                        HStack {
                            Image(systemName: "person.fill")
                                .font(.system(size: 30))
                            Text("Natalie")
                                .font(.system(size: 30, weight: .semibold, design: .rounded))
                        }
                        .frame(width: 250, height: 50)
                        .background(Color("DG"))
                        .cornerRadius(10)
                        .offset(x: -10, y: -5)
                    }
                    VStack {
                        HStack {
                            Image(systemName: "person.fill")
                                .font(.system(size: 30))
                            Text("Hayden")
                                .font(.system(size: 30, weight: .semibold, design: .rounded))
                        }.offset(x: 0)
                            .frame(width: 250, height: 50)
                            .background(Color("DG"))
                            .cornerRadius(10)
                            .offset(x: 10)
                    }
                }
                .frame(width: 580, height: 200)
                .background(Color("Charcoal"))
                .cornerRadius(20)
                .offset(x:0, y: 160)
            }
          
        }
        Button(action: {
            viewRouter.currentPage = .page3
        }) {
            NextButton()
        }.offset(y: 250)
    }
    
}






// Previews
struct Intro_Previews: PreviewProvider {
    static var previews: some View {
        Intro().environmentObject(ViewRouter())
            .preferredColorScheme(.dark)
            .accentColor(.white)
    }
}

struct Intro2_Previews: PreviewProvider {
    static var previews: some View {
        Intro2().environmentObject(ViewRouter())
            .preferredColorScheme(.dark)
            .accentColor(.white)
    }
}

struct ViewController_previews: PreviewProvider {
    static var previews: some View {
        ViewController().environmentObject(ViewRouter())
    }
}



// ignore
//LinearGradient(gradient: Gradient(colors: [Color.white, Color.black]), startPoint: .bottomLeading, endPoint: .trailing)
//    .mask(Text("").font(Font.system(size: 30)).fontWeight(.semibold))



