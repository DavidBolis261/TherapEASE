//
//  WelcomeScreen.swift
//  TherapEASY
//
//  Created by David Bolis on 22/6/2022.
//

import SwiftUI

struct WelcomeScreen: View {
    let wantedBlue = Color(0x7ec1ff)
    var body: some View {
        ZStack{
            VStack{
                Image("logo").resizable().frame(width: 250, height: 250)
                Text("TherapEASE").font(.largeTitle)
                Spacer()
                Text("I will use this app:").font(.title)
                HStack{
                    Button(action:{
                        
                    }){
                        Image("patient").resizable().frame(width: 150, height: 150)
                    }
                    Spacer()
                    Button(action:{
                        
                    }){
                        Image("therapest").resizable().frame(width: 150, height: 150)
                    }
                }
                
            }.foregroundColor(.white).padding()
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
//#7ec1ff
extension Color {
  init(_ hex: UInt, alpha: Double = 1) {
    self.init(
      .sRGB,
      red: Double((hex >> 16) & 0xFF) / 255,
      green: Double((hex >> 8) & 0xFF) / 255,
      blue: Double(hex & 0xFF) / 255,
      opacity: alpha
    )
  }
}
