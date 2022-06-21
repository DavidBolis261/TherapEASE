//
//  PMainPage.swift
//  TherapEASY
//
//  Created by David Bolis on 22/6/2022.
//

import SwiftUI

struct PMainPage: View {
    @State var clinisearchTerm = ""
    let neededOrange = Color(0xff914d)
    var body: some View {
        VStack{
            HStack{
                Image("logo").resizable().frame(width: 150, height: 150)
                Text("TherapEASE").font(.largeTitle)
            }
            Spacer()
            VStack(alignment: .leading){
                Text("Search for Clinics:").font(.title)
                TextField("Enter Clinic Name:", text: $clinisearchTerm).textFieldStyle(OvalTextFieldStyle())
            }.padding()
            Spacer()
            Text("Or").font(.largeTitle)
            Spacer()
            VStack(alignment: .leading){
                Text("Allow us to do the heavy lifting for you:").font(.title)
                HStack{
                    Button(action: {
                        
                    }){
                        Text("BEGIN").font(.largeTitle)
                    }.frame(width: 190, height: 60).background(neededOrange).cornerRadius(50)
                    Image(systemName: "arrow.right").font(.system(size: 50)).foregroundColor(neededOrange)
                }
                
            }
            
            
        }.foregroundColor(.white)
    }
}

struct PMainPage_Previews: PreviewProvider {
    static var previews: some View {
        PMainPage()
    }
}
struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .foregroundColor(Color.blue)
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
            .shadow(color: .gray, radius: 10)
    }
}
