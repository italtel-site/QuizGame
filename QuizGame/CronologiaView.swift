

import SwiftUI

struct Risultati: View {
    var data: String
    var orario: String
    var immagine: String
    var voto: Int
    
    var body: some View {
        Button(action:{
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
                Image(systemName: immagine)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25)
                    .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity)
            .padding(20)
            .overlay(RoundedRectangle(cornerRadius: 25)
                .stroke(.black, lineWidth: 1.5))
        }
    }
}

struct Sommario: View {
    
    var testo: String
    var totale: Int
    
    var body: some View {
        VStack(spacing: 10)
        {
            Text(testo).font(.system(size: 20)).multilineTextAlignment(.center)
            Text("\(totale)").font(.system(size: 50)).multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .padding(20)
        .overlay(RoundedRectangle(cornerRadius: 15)
            .stroke(.black, lineWidth: 1.5))
    }
}

struct CronologiaView: View {
    var body: some View {
        
        VStack()
        {
            Titolo(titolo: "Cronologia")
            HStack(spacing: 20)
            {
                Sommario(testo: "Simulazioni completate", totale: 11)
                Sommario(testo: "Simulazioni passate", totale: 7)
            }
            .padding(15)
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15)
            {
                ScrollView
                {
                    Risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 24);
                    Risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 24)
                    Risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 15)
                    Risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 25)
                    Risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 21)
                    Risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 30)
                    Risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 12)
                    Risultati(data: "09/10/2023", orario: "10:30", immagine: "arrow.right", voto: 18)
                }
            }.padding(15)
        }
        //MyTabNav()
    }
}

#Preview {
    CronologiaView()
}
