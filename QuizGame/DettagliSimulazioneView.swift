//
//  DettagliSimulazioneView.swift
//  QuizGame
//
//  Created by user243551 on 10/10/23.
//

import SwiftUI

struct Intestazione: View 
{
    var testo: String
    var voto: Int
    var immagine: String

    var body: some View 
    {
        HStack(spacing: 20)
        {
            Text(testo)
            Text("\(voto)/30")
            Image(systemName: immagine)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25)
        }
        .font(.system(size: 25))
        .frame(maxWidth: .infinity, alignment: .leading).padding()
    }
}

struct Risposte: View {
    var numDomanda: Int
    var stato: Bool
    var parola: String
    {
        return stato ? "Corretta": "Sbagliata"
    }
    
    var body: some View {
        NavigationLink(destination: DettagliSimulazioneView())
        {
            HStack()
            {
                Text("\(numDomanda)) Domanda").font(.system(size: 18)).foregroundColor(.black)
                Spacer()
                Text("Risposta: " + parola).font(.system(size: 18)).padding(.horizontal, 5).foregroundColor(.black)
                Image(systemName: "arrow.right")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 18)
                    .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity)
            .padding(20)
            .overlay(RoundedRectangle(cornerRadius: 25)
                .stroke(stato ? .green: .red, lineWidth: 1.5))
        }
    }
}

struct DettagliSimulazioneView: View {
    var votoFinale: Int = 25
    var body: some View {
        VStack
        {
            Titolo(titolo: "Simulazione")
            if votoFinale >= 18
            {
                Intestazione(testo: "Promosso" , voto: votoFinale, immagine: "")
            }
            else
            {
                Intestazione(testo: "Bocciato" , voto: votoFinale, immagine: "")
            }
            
            VStack()
            {
                ScrollView
                {
                    Risposte(numDomanda: 1, stato: true)
                    Risposte(numDomanda: 2, stato: true)
                    Risposte(numDomanda: 3, stato: false)
                    Risposte(numDomanda: 4, stato: true)
                    Risposte(numDomanda: 5, stato: false)
                    Risposte(numDomanda: 6, stato: true)
                    Risposte(numDomanda: 7, stato: true)
                    Risposte(numDomanda: 8, stato: false)
                    Risposte(numDomanda: 9, stato: true)
                    Risposte(numDomanda: 10, stato: true)
                    Risposte(numDomanda: 11, stato: true)
                    Risposte(numDomanda: 12, stato: false)
                }
            }
            .padding()
        }
    }
}

#Preview {
    DettagliSimulazioneView()
}
