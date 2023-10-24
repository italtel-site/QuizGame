import SwiftUI

struct DomandaEsame{
    var id: Int
    var descrizione: String
}
struct RispoteEsame{
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
                if let domanda = domandeEsame.first(where: { $0.id == idDomanda})
                {
                    Text("\(idDomanda)) " + domanda.descrizione).font(.system(size: 20))
                }
                else
                {
                    Text("Domanda non trovata").font(.system(size: 20))
                }
                
                VStack(alignment: .leading, spacing: 10)
                {
                    if let risposta = risposteEsame.first(where: { $0.id == idRisposta})
                    {
                        Text("Risposta tua: " + risposta.descrizione).font(.system(size: 20))
                                .foregroundColor(risposta.stato ? .green : .red)
                    }
                    else
                    {
                        Text("Domanda non trovata").font(.system(size: 20))
                    }

                    ForEach(risposteEsame, id: \.id){ risposta in
                        
                        if(risposta.id_domanda == idDomanda)
                        {
                            if(risposta.stato == true)
                            {
                                Text("Risposta corretta: " + risposta.descrizione).font(.system(size: 20))
                            }
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


struct RispostaView_Previews: PreviewProvider {
    static var previews: some View {
        RispostaView(idDomanda: 1,stato: true,idRisposta: 3)
    }
}
