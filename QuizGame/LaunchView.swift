//
//  LaunchView.swift
//  QuizGame
//
//  Created by user243551 on 10/2/23.
//

import SwiftUI



struct LaunchView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image("ITSARicon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .padding(.vertical)
                Text("QuizAR")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                NavigationLink(destination: LoginView()){
                    Text("Login")
                        .font(.title2)
                }
                .padding()
                .padding(.horizontal)
                .background(Color.red)
                .cornerRadius(10)
                .foregroundColor(.white)
                
            }
        }
    }
}

/*#Preview {
    LaunchView()
}*/

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
    
