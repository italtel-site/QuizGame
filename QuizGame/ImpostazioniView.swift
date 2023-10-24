//
//  ImpostazioniView.swift
//  QuizGame
//
//  Created by user243551 on 10/24/23.
//

import SwiftUI

struct ImpostazioniView: View {
    var body: some View {
        VStack(spacing: 20) {
            Titolo(titolo: "Impostazioni")

            Text("Modifica Profilo").frame(maxWidth: .infinity, alignment: .leading)
            Text("Cambia Password").frame(maxWidth: .infinity, alignment: .leading)
            Text("Reset").frame(maxWidth: .infinity, alignment: .leading)

            VStack {
                Image("ITSARicon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                        .padding(.vertical)
                Text("UFS14 - Progettazione e Sviluppo iOS")
                Text("QuizAR - Abou, Frigerio, Scarafoni")
            }

            NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true)){
                        Text("Logout")
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .cornerRadius(12)
                        

        }
    }
}

struct ImpostazioniView_Previews: PreviewProvider {
    static var previews: some View {
        ImpostazioniView()
    }
}
