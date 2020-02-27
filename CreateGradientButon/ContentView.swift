//
//  ContentView.swift
//  CreateGradientButon
//
//  Created by Ramill Ibragimov on 27.02.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct CreateGradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(15)
            .padding(.horizontal, 15)
        
    }
}

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Action button clicked")
        }) {
            HStack {
                Image(systemName: "heart.fill")
                    .font(.title)
                Text("Love SwiftUI")
                    .fontWeight(.semibold)
                    .font(.title)
            }
        }.buttonStyle(CreateGradientButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
