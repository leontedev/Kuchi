//
//  WelcomeView.swift
//  Kuchi
//
//  Created by Mihai Leonte on 13/01/2020.
//  Copyright © 2020 Omnijar. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcome-background", bundle: nil)
                .resizable()
                //.scaledToFit()
                .aspectRatio(1 / 1, contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .saturation(0.5)
                .blur(radius: 5)
                .opacity(0.08)
            
            HStack {
                Image(systemName: "table")
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
                    // 1
                    .cornerRadius(60 / 2)
                    // 2
                    .border(Color.gray, width: 1)
                    // 3
                    .background(Color(white: 0.9))
                    // 4
                    .clipShape(Circle())
                    // 5
                    .foregroundColor(.red)
                
                VStack {
                    Text("Welcome to")
                        .font(.headline)
                        .bold()
                    Text("Kuchi")
                        .font(.largeTitle)
                        .bold()
                }
                .foregroundColor(.red)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            }
        }
        
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
