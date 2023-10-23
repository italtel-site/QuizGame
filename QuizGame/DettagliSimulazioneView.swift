//
//  DettagliSimulazioneView.swift
//  QuizGame
//
//  Created by user243551 on 10/10/23.
//

import SwiftUI

struct DomandaEsame
{
    var id: Int
    var descrizione: String
}

struct RispoteEsame
{
    var id: Int
    var descrizione: String
    var stato: Bool
    var id_domanda: Int
}

struct RispostaView: View {
    var idDomanda: Int
    var stato: Bool
    var idRisposta: Int
    
    var domandeEsame: [DomandaEsame] = [DomandaEsame(id: 1, descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?")]
    var risposteEsame: [RispoteEsame] =
    [
        RispoteEsame(id: 1, descrizione: "Java", stato: false, id_domanda: 1),
        RispoteEsame(id: 2, descrizione: "Query", stato: false, id_domanda: 1),
        RispoteEsame(id: 3, descrizione: "SQL", stato: true, id_domanda: 1),
        RispoteEsame(id: 4, descrizione: "Javascript", stato: false, id_domanda:1)
    ]

    var body: some View {
        VStack()
        {
            Titolo(titolo: "Risposta")
            VStack(alignment: .leading, spacing: 30)
            {
                ForEach(domandeEsame, id: \.id){ domanda in
                    Text("\(idDomanda)) " + domanda.descrizione).font(.system(size: 20))
                }
                
                VStack(alignment: .leading, spacing: 10)
                {
                    ForEach(risposteEsame, id: \.id){ risposta in
                        
                        if risposta.id == idRisposta
                        {
                            Text("Risposta tua: " + risposta.descrizione).font(.system(size: 20))
                                .foregroundColor(risposta.stato ? .green : .red)
                        }
                    }
                    
                    ForEach(risposteEsame, id: \.id){ risposta in
                        
                        if(risposta.stato == true)
                        {
                            Text("Risposta corretta: " + risposta.descrizione).font(.system(size: 20))
                        }
                    }
                }

            }
            .padding()
            .frame(maxWidth: .infinity)
            .overlay(RoundedRectangle(cornerRadius: 15)
                .stroke(.black, lineWidth: 1.5))
        }
        .padding()
        
    }
}






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

struct Domanda
{
    var numDomanda: Int
    var stato: Bool
}

struct Risposte: View {
    var numDomanda: Int
    var stato: Bool
    var parola: String
    {
        return stato ? "Corretta": "Sbagliata"
    }
    
    var body: some View {
        NavigationLink(destination: RispostaView(idDomanda: numDomanda, stato: stato, idRisposta: 2))
        {
            HStack()
            {
                Text("\(numDomanda)) Domanda").font(.system(size: 16)).foregroundColor(.black)
                Spacer()
                Text("Risposta: " + parola).font(.system(size: 16)).padding(.horizontal, 5).foregroundColor(.black)
                Image(systemName: "arrow.right")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 16)
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
    
    var domande: [Domanda] =
    [
        Domanda(numDomanda: 1, stato: true),
        Domanda(numDomanda: 2, stato: true),
        Domanda(numDomanda: 3, stato: false),
        Domanda(numDomanda: 4, stato: true),
        Domanda(numDomanda: 5, stato: false),
        Domanda(numDomanda: 6, stato: true),
        Domanda(numDomanda: 7, stato: true),
        Domanda(numDomanda: 8, stato: false),
        Domanda(numDomanda: 9, stato: true),
        Domanda(numDomanda: 10, stato: true),
        Domanda(numDomanda: 11, stato: true),
        Domanda(numDomanda: 12, stato: false),
        Domanda(numDomanda: 13, stato: true),
        Domanda(numDomanda: 14, stato: false),
        Domanda(numDomanda: 15, stato: false),
        Domanda(numDomanda: 16, stato: false),
        Domanda(numDomanda: 17, stato: true),
        Domanda(numDomanda: 18, stato: true),
        Domanda(numDomanda: 19, stato: true),
        Domanda(numDomanda: 20, stato: false),
        Domanda(numDomanda: 21, stato: false),
        Domanda(numDomanda: 22, stato: true),
        Domanda(numDomanda: 23, stato: false),
        Domanda(numDomanda: 24, stato: true),
        Domanda(numDomanda: 25, stato: true),
        Domanda(numDomanda: 26, stato: false),
        Domanda(numDomanda: 27, stato: true),
        Domanda(numDomanda: 28, stato: true),
        Domanda(numDomanda: 29, stato: false),
        Domanda(numDomanda: 30, stato: true)
    ]
    var votoFinale: Int
    
    init ()
    {
        self.votoFinale = 0
    }
    
    init(votoFinale: Int)
    {
        self.votoFinale = votoFinale
    }
    
    var body: some View {
        VStack
        {
            Titolo(titolo: "Esame")
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
                    ForEach(domande, id: \.numDomanda){ domanda in
                        Risposte(numDomanda: domanda.numDomanda, stato: domanda.stato)
                    }
                }
            }
            .padding()
        }
    }
}

/*#Preview {
    DettagliSimulazioneView()
}*/

struct DettagliSimulazioneView_Previews: PreviewProvider {
    static var previews: some View {
        DettagliSimulazioneView()
    }
}
