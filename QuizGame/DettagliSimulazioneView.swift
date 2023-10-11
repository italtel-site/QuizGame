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
        HStack(spacing: 10)
        {
            Text(testo)
            Text("\(voto)/30")
            Image(systemName: immagine)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10)
        }
        .frame(maxWidth: .infinity, alignment: .leading).padding()
    }
}

struct DettagliSimulazioneView: View {
    var votoFinale: Int
    var body: some View {
        VStack
        {
            Titolo(titolo: "Simulazione")
            if votoFinale >= 18
            {
                Intestazione(testo: "Promosso" , voto: votoFinale, immagine: "smile")
            }
            else
            {
                Intestazione(testo: "Bocciato" , voto: votoFinale, immagine: "smile")
            }
        }
    }
}

#Preview {
    DettagliSimulazioneView()
}
