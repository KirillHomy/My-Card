//
//  Card.swift
//  My Card
//
//  Created by Kirill Khomytsevych on 02.04.2023.
//

import SwiftUI

struct Card: View {

    let image: String
    let message: String

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .padding(.horizontal)
            .frame(height: 50.0)
            .overlay(
                HStack {
                    Image(systemName: image)
                        .foregroundColor(.black)
                    Text(message)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                })
    }

}
