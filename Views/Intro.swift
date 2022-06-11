import SwiftUI
import UIKit


struct Intro: View {
    
    
    
    var body: some View {
        NavigationView {
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
                
                Text("""
                 Note:
                 This experience is best viewed in Horizontal
                 """)
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .fixedSize(horizontal: true, vertical: true)
                .foregroundColor(.secondary)
                .offset(y: -100)
                .padding()
                
                NavigationLink(destination: Intro2()) {
                    Text("Next")
                    
                        .font(.system(size: 30, weight: .semibold ,design: .rounded))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("Charcoal"))
                        .cornerRadius(20)
                    
                }.offset(y: -100)
                
            }
            
            
        }
    }
}




struct Intro2: View {
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
                            Text("Name 1")
                                .font(.system(size: 30, weight: .semibold, design: .rounded))
                            
                        }.offset(x: 0)
                            .frame(width: 250, height: 50)
                            .background(Color("DG"))
                            .cornerRadius(10)
                            .offset(x: -10, y: -5)
                        
                        HStack {
                            Image(systemName: "person.fill")
                                .font(.system(size: 30))
                            Text("Name 2")
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
                            Text("Name 3")
                                .font(.system(size: 30, weight: .semibold, design: .rounded))
                            
                        }.offset(x: 0)
                            .frame(width: 250, height: 50)
                            .background(Color("DG"))
                            .cornerRadius(10)
                            .offset(x: 10)
                        
                        HStack {
                            Image(systemName: "person.fill")
                                .font(.system(size: 30))
                            Text("Name 4")
                                .font(.system(size: 30, weight: .semibold, design: .rounded))
                            
                        }.offset(x: 0)
                            .frame(width: 250, height: 50)
                            .background(Color("DG"))
                            .cornerRadius(10)
                            .offset(x: 10)
                        
                        HStack {
                            Image(systemName: "person.fill")
                                .font(.system(size: 30))
                            Text("Name 5")
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
            
            //
            //                VStack {
            //                    Image(systemName: "")
            //                        .font(.system(size: 60))
            //                        .foregroundColor(.white)
            //                        .padding()
            //
            //                    Text("")
            //                                    .font(.system(size: 30, weight: .bold, design: .rounded))
            //
            //                }
            //                .frame(width: 400, height: 400)
            //                .background(Color("Charcoal"))
            //                .cornerRadius(20)
            //                .offset(x: -180, y: 140)
            
            
            //                Group {
            //                    VStack {
            //                        HStack {
            //                            Text("Team Members")
            //                                .font(.system(size: 30, weight: .bold, design: .rounded))
            //                        }
            //
            //                        VStack {
            //                            HStack {
            //                                Image(systemName: "person.fill")
            //                                    .font(.system(size: 30))
            //                                Text("Name 1")
            //                                    .font(.system(size: 30, weight: .semibold, design: .rounded))
            //                            }.offset(x: 0)
            //                                .frame(width: 280, height: 50)
            //                                .background(Color("DG"))
            //                                .cornerRadius(10)
            //
            //                            HStack {
            //                                Image(systemName: "person.fill")
            //                                    .font(.system(size: 30))
            //                                Text("Name 2")
            //                                    .font(.system(size: 30, weight: .semibold, design: .rounded))
            //                            }.offset(x: 0)
            //                                .frame(width: 280, height: 50)
            //                                .background(Color("DG"))
            //                                .cornerRadius(10)
            //
            //
            //
            //                            HStack {
            //                                Image(systemName: "person.fill")
            //                                    .font(.system(size: 30))
            //                                Text("Name 3")
            //                                    .font(.system(size: 30, weight: .semibold, design: .rounded))
            //                            }.offset(x: 0)
            //                                .frame(width: 280, height: 50)
            //                                .background(Color("DG"))
            //                                .cornerRadius(10)
            //
            //
            //                            HStack {
            //                                Image(systemName: "person.fill")
            //                                    .font(.system(size: 30))
            //                                Text("Name 4")
            //                                    .font(.system(size: 30, weight: .semibold, design: .rounded))
            //                            }.offset(x: 0)
            //                                .frame(width: 280, height: 50)
            //                                .background(Color("DG"))
            //                                .cornerRadius(10)
            //
            //
            //
            //                            HStack {
            //                                Image(systemName: "person.fill")
            //                                    .font(.system(size: 30))
            //                                Text("Name 5")
            //                                    .font(.system(size: 30, weight: .semibold, design: .rounded))
            //                            }.offset(x: 0)
            //                                .frame(width: 280, height: 50)
            //                                .background(Color("DG"))
            //                                .cornerRadius(10)
            //
            //                        }
            //
            //                    }
            //                    .frame(width: 350, height: 350)
            //                    .background(Color("Charcoal"))
            //                    .cornerRadius(20)
            //                    .offset(x: 200, y: 140)
            //                }
            
            
            
            NavigationLink(destination: TB()) {
                Text("Let's Get Started")
                
                    .font(.system(size: 30, weight: .semibold ,design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("Charcoal"))
                    .cornerRadius(20)
            }.offset(y: 310)
            
            
        }
    }
}




// Previews
struct Intro_Previews: PreviewProvider {
    static var previews: some View {
        Intro()
            .previewInterfaceOrientation(.landscapeLeft)
            .preferredColorScheme(.dark)
            .accentColor(.white)
            .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Intro2_Previews: PreviewProvider {
    static var previews: some View {
        Intro2()
            .previewInterfaceOrientation(.landscapeRight)
            .preferredColorScheme(.dark)
    }
}





//LinearGradient(gradient: Gradient(colors: [Color.white, Color.black]), startPoint: .bottomLeading, endPoint: .trailing)
//    .mask(Text("").font(Font.system(size: 30)).fontWeight(.semibold))


struct CC {
    static let Purple = Color("Purple")
    static let Yellow = Color("Yellow")
    static let Charcoal = Color("Charcoal")
    static let DG = Color("DG")
}

