//
//  ContentView.swift
//  TherapEASY
//
//  Created by David Bolis on 22/6/2022.
//

import SwiftUI

struct ContentView: View {
    let wantedBlue = Color(0x7ec1ff)
    var body: some View {
        ZStack{
            wantedBlue.edgesIgnoringSafeArea(.all)
            PMainPage()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//#7ec1ff
