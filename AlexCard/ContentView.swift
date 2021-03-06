//
//  ContentView.swift
//  AlexCard
//
//  Created by Алексей Раку on 28.07.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("alex")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 270, height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                Text("Alex Raku")
                    .font(.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                    
                Text("iOS Developer")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+7 961 991 60 34", imageName: "phone.fill")
                InfoView(text: "raku@ito22.ru", imageName: "envelope.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

