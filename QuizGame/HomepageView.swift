//
//  HomepageView.swift
//  QuizGame
//
//  Created by user243551 on 10/5/23.
//

import SwiftUI
import Foundation 

let date = Date()
let dateFormatter = DateFormatter()

let currentTime = 60*Calendar.current.component(.hour, from: date) + Calendar.current.component(.minute, from: date) + (Calendar.current.component(.second, from: date)/60) // in minutes
let startEvening = 60*14
let endEvening = 60*5

func checkGiorno() -> Bool {

    if(currentTime > endEvening && currentTime < startEvening) {
        return true
    }

    else {
        return false 
    }

}
 
//dateFormatter.dateFormat = "HH:mm:ss"

struct HomepageView: View {
    //@State var userValue = UserData(nome: "Prova")
    var body: some View {
        NavigationStack{
            VStack(spacing: 20) {
                Titolo(titolo: "QuizAR")
                
                if (checkGiorno()) {
                    Text("Buongiorno, " + CurrentUser.currentUser.nome + "!").font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .padding(.bottom)
                }
                
                else{
                    Text("Buonasera, " + CurrentUser.currentUser.nome + "!").font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .padding(.bottom)
                }
                
                VStack(spacing: 50) {
                    VStack(spacing: 10) {
                        Text("Rimangono").font(.title2)
                        Text("120").font(.system(size: 60 ,weight: .bold))
                        Text("giorni alla prova").font(.title2)
                        
                    }.frame(maxWidth: 300, maxHeight: 150)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(red: 0.54, green: 0, blue: 0, opacity: 1))
                        .cornerRadius(12)
                    
                    
                    
                    
                    NavigationLink(destination: TestView()){
                        VStack {
                            Image(systemName: "play.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50)
                                .foregroundColor(.white)
                            Text("Avvia nuova simulazione").font(.title2)
                                .foregroundColor(.white)
                        }
                    }.frame(maxWidth: 300, maxHeight: 150)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(12)
                        .shadow(color: Color(red: 0.54, green: 0, blue: 0, opacity: 1), radius: 0, x: 10, y: 10)
                    
                }.fixedSize(horizontal: false, vertical: false)
                    .frame(maxHeight: 400)
                
                NavigationLink(destination: TestView()) {
                    Button(action: {}) {
                        HStack{
                            Image(systemName: "hammer.fill")
                            Text("Esercitati senza limiti di tempo").font(.body)
                        }.foregroundColor(.white)
                    }
                    .frame(maxWidth: 300)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(12)
                    .shadow(color: .black, radius: 0, x: 10, y: 10)
                }
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
    }
}

/*#Preview {
    HomepageView()
}*/

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
