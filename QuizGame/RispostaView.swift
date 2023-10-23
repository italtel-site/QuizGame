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

