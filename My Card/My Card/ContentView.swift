//
//  ContentView.swift
//  My Card
//
//  Created by Кирилл on 13.05.2021.
//

import SwiftUI
import MessageUI

struct ContentView: View {

    var body: some View {

        ZStack {

            // Background color
            Color(red: 0, green: 0, blue: 0)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            VStack {

                // Image
                Image("my_photo")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 200, height: 200)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle()
                        .stroke(lineWidth: 3))

                // Text Name
                Text("Kirill Khomicevich" )
                    .font(.title)
                    .fontWeight(.regular)

                // Text Status
                Text("iOS Developer" )
                    .font(.title2)
                    .fontWeight(.medium)

                // Button number
                Button {
                    setupCallMe()
                } label: {
                    Card(image: "phone.fill", message: "+380-73-003-04-97")
                }

                // Button mail
                Button {
                    setupSendMessage()
                } label: {
                    Card(image: "envelope.fill", message: "khomicevichkirillwork@gmail.com")
                }

            }
            .foregroundColor(.orange)

        }

    }

    // Button methods
    func setupCallMe() {
        guard let url = URL(string: "tel://+380730030497") else { return }
        UIApplication.shared.open(url)
    }

    func setupSendMessage() {
        if MFMailComposeViewController.canSendMail() {
            let composeVC = MFMailComposeViewController()
            composeVC.setToRecipients(["khomicevichkirillwork@gmail.com"])
            composeVC.setSubject("Letter subject")
            composeVC.setMessageBody("Text of the letter", isHTML: false)
            UIApplication.shared.windows.first?.rootViewController?.present(composeVC, animated: true, completion: nil)
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
