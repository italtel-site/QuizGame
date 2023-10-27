//
//  TestView.swift
//  QuizGame
//
//  Created by user243551 on 10/24/23.
//

import SwiftUI

struct RispostaQuiz{
    var id: Int
    var risposta: String
    var correctAnswer: Bool
}

struct DomandaQuiz {
    var id: Int
    var descrizione: String
    var risposte: [RispostaQuiz]
    var risultato: RispostaQuiz?
}

struct DomandaView: View{
    @State var domandaEsame: DomandaQuiz
    var indice: Int
    var quantita: Int
    @State var rispostaStato: Bool = false
    @State var rispostaStato2: Bool = false
    @State var rispostaStato3: Bool = false
    @State var rispostaStato4: Bool = false
    
    //@State private var risposta: String = "prova"
    
    
    var body: some View{
        VStack{
            Text("Domanda \(indice+1) di \(quantita)")
                .font(.title2 .weight(.bold))
                .foregroundColor(.white)
            Text(domandaEsame.descrizione)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(.black))
                .background()
                .cornerRadius(8)
                .padding(.vertical)
                .font(.title3 .weight(.semibold))
            Button{
                domandaEsame.risultato = domandaEsame.risposte[0]
                //risposta = domandaEsame.risposte[0].risposta
                rispostaStato = true
                rispostaStato2 = false
                rispostaStato3 = false
                rispostaStato4 = false
            }label: {
                Text(domandaEsame.risposte[0].risposta)
                    .frame(maxWidth: 325, maxHeight: 50)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(.black))
                    .background(rispostaStato ? .yellow: .white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .padding(.vertical,5)
            }
            Button{
                domandaEsame.risultato = domandaEsame.risposte[1]
                //risposta = domandaEsame.risposte[1].risposta
                rispostaStato = false
                rispostaStato2 = true
                rispostaStato3 = false
                rispostaStato4 = false
            }label: {
                Text(domandaEsame.risposte[1].risposta)
                    .frame(maxWidth: 325, maxHeight: 50)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(.black))
                    .background(rispostaStato2 ? .yellow: .white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .padding(.vertical,5)
            }
            Button{
                domandaEsame.risultato = domandaEsame.risposte[2]
                //risposta = domandaEsame.risposte[2].risposta
                rispostaStato = false
                rispostaStato2 = false
                rispostaStato3 = true
                rispostaStato4 = false
            }label: {
                Text(domandaEsame.risposte[2].risposta)
                    .frame(maxWidth: 325, maxHeight: 50)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(.black))
                    .background(rispostaStato3 ? .yellow: .white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .padding(.vertical,5)
            }
            Button{
                domandaEsame.risultato = domandaEsame.risposte[3]
                //risposta = domandaEsame.risposte[3].risposta
                rispostaStato = false
                rispostaStato2 = false
                rispostaStato3 = false
                rispostaStato4 = true
            }label: {
                Text(domandaEsame.risposte[3].risposta)
                    .frame(maxWidth: 325, maxHeight: 50)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(.black))
                    .background(rispostaStato4 ? .yellow: .white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .padding(.vertical,5)
            }
        }
    }
}

struct EndQuizView: View{
    @Binding var wantToEnd: Bool
    @Binding var isActive: Bool
    var body: some View{
        VStack{
            VStack{
                Text("Sei sicuro di voler terminare? \(String(wantToEnd))")
                    .font(.title3 .weight(.bold))
                    .foregroundColor(.white)
                HStack{
                    NavigationLink(destination: LoginView()){
                        HStack{
                            Text("Si")
                        }
                        .frame(maxWidth: 80, maxHeight: 40)
                        .background()
                        .cornerRadius(8)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black))
                        .foregroundColor(.black)
                    }
                    .padding(.trailing, 60)
                    Button{
                        wantToEnd = false
                        isActive = true
                    }label: {
                        HStack{
                            Text("No")
                            
                        }
                        .frame(maxWidth: 80, maxHeight: 40)
                        .background()
                        .cornerRadius(8)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black))
                        .foregroundColor(.black)
                    }
                }
                .padding(.top,30)
            }
            .padding()
            .padding()
            .frame(maxWidth: 350)
            .background(.red)
            .cornerRadius(8)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke())
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.white.opacity(0.6))
    }
}

struct TestView: View {
    @State var wantToEnd:Bool = false
    var domandeEsame: [DomandaQuiz] = [
        DomandaQuiz(
            id: 1,
            descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?",
            risposte: [
                RispostaQuiz(id: 1, risposta: "SQL", correctAnswer: true),
                RispostaQuiz(id: 2, risposta: "Spring", correctAnswer: false),
                RispostaQuiz(id: 3, risposta: "C#", correctAnswer: false),
                RispostaQuiz(id: 4, risposta: "Java", correctAnswer: false)
            ],
            risultato: nil //RispostaQuiz(id:0,risposta: "none",correctAnswer: false)
        ),
        DomandaQuiz(
            id: 1,
            descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?",
            risposte: [
                RispostaQuiz(id: 1, risposta: "SQL", correctAnswer: true),
                RispostaQuiz(id: 2, risposta: "Spring", correctAnswer: false),
                RispostaQuiz(id: 3, risposta: "C#", correctAnswer: false),
                RispostaQuiz(id: 4, risposta: "Java", correctAnswer: false)
            ],
            risultato: nil //RispostaQuiz(id:0,risposta: "none",correctAnswer: false)
        )

    ]
    @State private var timeRemaining = 1800
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var seconds=00
    @State var minutes=30
    @Environment(\.scenePhase) var scenePhase
    @State private var isActive = true
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    HStack{
                        Text("Quiz test")
                            .font(.title .weight(.bold))
                            .foregroundColor(.white)
                        Spacer()
                        Text(" \(minutes):\(String(format: "%02d",seconds))")
                            .font(.title3 .weight(.semibold))
                            .padding(.top,2)
                            .foregroundColor(.white)
                        Image(systemName: "hourglass")
                            .resizable()
                            .frame(maxWidth: 20,maxHeight:25)
                            .padding(.top,2)
                            .foregroundColor(.white)
                        Spacer()
                        Button{
                            isActive = !isActive
                            wantToEnd = true
                        }label: {
                            VStack{
                                Image(systemName: "power")
                                    .resizable()
                                    .frame(maxWidth: 25,maxHeight:25)
                            }
                            .padding(8)
                            .background(Color(red: 0.498, green: 0.066, blue:0.054))
                            .clipShape(Circle())
                        }.foregroundColor(.white)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.red)
                    TabView {
                        ForEach( 0 ..< domandeEsame.count) { i in
                            DomandaView(domandaEsame: domandeEsame[i], indice: i, quantita: domandeEsame.count)
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 8)
                                    .stroke(.black))
                                .background(.red)
                        }
                        
                        
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                }
                .onReceive(timer) { time in
                    guard isActive else { return }
                    
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                        seconds -= 1
                    }
                    if seconds == -1{
                        seconds=59
                        minutes-=1
                    }
                }
                .onChange(of: scenePhase) { newPhase in
                    if newPhase == .active {
                        isActive = true
                    } else {
                        isActive = false
                    }
                }
                EndQuizView(wantToEnd: $wantToEnd, isActive: $isActive)
                    .zIndex(wantToEnd ? 1 : -1)
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
