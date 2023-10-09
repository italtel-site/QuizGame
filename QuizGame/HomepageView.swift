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
    @State var userValue = UserData(nome: "Prova")
    var body: some View {
        VStack {
            Text("QuizAR").font(.title)

           if (checkGiorno()) {
               Text("Buongiorno, " + userValue.nome + "!").font(.title2)
           }

           else{
               Text("Buonasera, " + userValue.nome + "!").font(.title2)
           }

            VStack {
                Text("Rimangono").font(.title2)
                Text("120").font(.system(size: 45 ,weight: .bold))
                Text("giorni alla prova").font(.title2)
            }
            .background(Color.red)
        }
    }
}

#Preview {
    HomepageView()
}
