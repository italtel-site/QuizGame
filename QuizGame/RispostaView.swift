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
    var cont: Int = 0
    var domandeEsame: [DomandaEsame] = [DomandaEsame(id: 1, descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?")]
    var risposteEsame: [RispoteEsame] = 
    [
        RispoteEsame(id: 1, descrizione: "Java", stato: false, id_domanda: 1),
        RispoteEsame(id: 2, descrizione: "Query", stato: false, id_domanda: 1),
        RispoteEsame(id: 3, descrizione: "SQL", stato: true, id_domanda: 1),
        RispoteEsame(id: 4, descrizione: "Javascript", stato: false, id_domanda:1)  
    ]

    var body: some View {
        VStack(spacing: 30)
        {
            VStack()
            {
                ForEach(domandeEsame, id: \.id){ domanda in
                    cont = domanda.id
                    Text(domanda.descrizione).font(.system(size: 20))
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

#Preview {
    RispostaView(idDomanda: 1)
}