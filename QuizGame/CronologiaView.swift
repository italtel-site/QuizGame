

import SwiftUI

struct risultati: View {
    var data: String
    var orario: String
    var immagine: String
    var voto: Int
    
    var body: some View {
        Button(action:{
        print("dettagli")
        }){
            HStack()
            {
                VStack(alignment: .leading, spacing: 5)
                {
                    Text(data).font(.system(size: 20)).foregroundColor(.black)
                    Text(orario).font(.system(size: 20)).foregroundColor(.black)
                }
                
                Spacer()
                Text("\(voto)/30").font(.system(size: 30)).padding(.horizontal, 5).foregroundColor(voto>=18 ? .green: .red)
                Image(systemName: immagine).foregroundColor(.black)
            }
            .frame(maxWidth: .infinity)
            .padding(20)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(.black, lineWidth: 1))
        }
    }
}

struct CronologiaView: View {
    var body: some View {
        
        VStack()
        {
            titolo(titolo: "Cronologia")
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15)
            {
                ScrollView
                {
                    risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 24);
                    risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 24)
                    risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 15)
                    risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 25)
                    risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 21)
                    risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 30)
                    risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 12)
                    risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 18)
                }
            }.padding(15)
        }
    }
}

#Preview {
    CronologiaView()
}
