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
                .padding(.bottom, 30)

            Text("Modifica Profilo").frame(maxWidth: .infinity, alignment: .leading)
                .font(.title2)
                .padding(.leading)
                .padding(.bottom, 10)
            Text("Cambia Password").frame(maxWidth: .infinity, alignment: .leading)
                .font(.title2)
                .padding(.leading)
                .padding(.bottom, 10)
            Text("Reset").frame(maxWidth: .infinity, alignment: .leading)
                .font(.title2)
                .padding(.leading)
                .padding(.bottom, 10)

            Spacer()
            VStack {
                Image("ITSARicon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                        .padding(.vertical)
                Text("UFS14 - Progettazione e Sviluppo iOS").font(.footnote)
                Text("QuizAR - Abou, Frigerio, Scarafoni").font(.footnote)
            }
            
            Spacer()
        
            NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true)){
                        Text("Logout").font(.title3)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .cornerRadius(12)
            Spacer()

        }
    }
}

struct ImpostazioniView_Previews: PreviewProvider {
    static var previews: some View {
        ImpostazioniView()
    }
}
