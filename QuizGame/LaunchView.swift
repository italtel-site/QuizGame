//
//  LaunchView.swift
//  QuizGame
//
//  Created by user243551 on 10/2/23.
//

import SwiftUI



struct LaunchView: View {
    var body: some View {
        VStack{
            Image("ITSARicon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250)
                .padding(.vertical)
            Text("QuizAR")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    LaunchView()
}
	
