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
}

struct DomandaView: View{
    var domandaEsame: DomandaQuiz
    
    var body: some View{
        VStack{
            Text(domandaEsame.descrizione)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(.black))
        }
    }
}


struct TestView: View {
    
    var domandeEsame: [DomandaQuiz] = [
        DomandaQuiz(
            id: 1,
            descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?",
            risposte: [
                RispostaQuiz(id: 1, risposta: "SQL", correctAnswer: true),
                RispostaQuiz(id: 2, risposta: "Spring", correctAnswer: false),
                RispostaQuiz(id: 3, risposta: "C#", correctAnswer: false),
                RispostaQuiz(id: 4, risposta: "Java", correctAnswer: false)
            ]
        ),
        DomandaQuiz(
            id: 1,
            descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?",
            risposte: [
                RispostaQuiz(id: 1, risposta: "SQL", correctAnswer: true),
                RispostaQuiz(id: 2, risposta: "Spring", correctAnswer: false),
                RispostaQuiz(id: 3, risposta: "C#", correctAnswer: false),
                RispostaQuiz(id: 4, risposta: "Java", correctAnswer: false)
            ]
        ),
        DomandaQuiz(
            id: 1,
            descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?",
            risposte: [
                RispostaQuiz(id: 1, risposta: "SQL", correctAnswer: true),
                RispostaQuiz(id: 2, risposta: "Spring", correctAnswer: false),
                RispostaQuiz(id: 3, risposta: "C#", correctAnswer: false),
                RispostaQuiz(id: 4, risposta: "Java", correctAnswer: false)
            ]
        ),
        DomandaQuiz(
            id: 1,
            descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?",
            risposte: [
                RispostaQuiz(id: 1, risposta: "SQL", correctAnswer: true),
                RispostaQuiz(id: 2, risposta: "Spring", correctAnswer: false),
                RispostaQuiz(id: 3, risposta: "C#", correctAnswer: false),
                RispostaQuiz(id: 4, risposta: "Java", correctAnswer: false)
            ]
        ),
        DomandaQuiz(
            id: 1,
            descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?",
            risposte: [
                RispostaQuiz(id: 1, risposta: "SQL", correctAnswer: true),
                RispostaQuiz(id: 2, risposta: "Spring", correctAnswer: false),
                RispostaQuiz(id: 3, risposta: "C#", correctAnswer: false),
                RispostaQuiz(id: 4, risposta: "Java", correctAnswer: false)
            ]
        ),
        DomandaQuiz(
            id: 1,
            descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?",
            risposte: [
                RispostaQuiz(id: 1, risposta: "SQL", correctAnswer: true),
                RispostaQuiz(id: 2, risposta: "Spring", correctAnswer: false),
                RispostaQuiz(id: 3, risposta: "C#", correctAnswer: false),
                RispostaQuiz(id: 4, risposta: "Java", correctAnswer: false)
            ]
        )
    ]
    

    var body: some View {
        TabView {
            ForEach(domandeEsame, id: \.id) { esame in
                DomandaView(domandaEsame: esame)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 8)
            .stroke(.black))

        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(.page(backgroundDisplayMode: .always))    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
