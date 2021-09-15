//
//  ContentView.swift
//  My Card
//
//  Created by Кирилл on 13.05.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {Color(red: 0, green: 0, blue: 0).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {Image("kirill3")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 120, height: 120)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle()
                .stroke(lineWidth: 3))
                Text("Кирилл Хомицевич" )
                    .font(.title)
                    .fontWeight(.regular)
                    
                Text("IOS Developer" )
                    .font(.title2)
                    .fontWeight(.medium)
                Divider();
                Card(image: "phone.fill", message: "+380996787336")
                Card(image: "envelope.fill", message: "khomicevichkirillwork@gmail.com")
                    }.foregroundColor(.orange)
           
            }
       

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .padding(.horizontal)
            .frame( height: 50.0)
            .overlay(HStack {
                        Image(systemName:   image).foregroundColor(.black)
                        Text(message)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)})
    }
}
