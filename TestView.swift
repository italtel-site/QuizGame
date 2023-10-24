//
//  TestView.swift
//  QuizGame
//
//  Created by user243551 on 10/24/23.
//

import SwiftUI

struct AnswerView: View{
    var singleAnswer : RispoteEsame
    
    var body: some View{
        Text("ciao")
    }
}

struct QuestionView: View{
    var singleQuestion : DomandaEsame
    
    var body: some View{
        VStack{
            Text(singleQuestion.descrizione)
            
        }.padding().frame().overlay(RoundedRectangle(cornerRadius: 8))
    }
}


struct TestView: View {
    
    var domandeEsame: [DomandaEsame] = [
        DomandaEsame(id: 1, descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?"),
        DomandaEsame(id: 2, descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?"),
        DomandaEsame(id: 3, descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?"),
        DomandaEsame(id: 4, descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?"),
        DomandaEsame(id: 5, descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?"),
        DomandaEsame(id: 6, descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?"),
        DomandaEsame(id: 7, descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?"),
        DomandaEsame(id: 8, descrizione: "Per i database quale linguaggio si deve utilizzare per effettuare delle query?")
    ]
    var listaRisposteEsame: [RispoteEsame] = [
        RispoteEsame(id: 1, descrizione: "Java", stato: false, id_domanda: 1),
        RispoteEsame(id: 2, descrizione: "Query", stato: false, id_domanda: 2),
        RispoteEsame(id: 3, descrizione: "SQL", stato: true, id_domanda: 3),
        RispoteEsame(id: 4, descrizione: "Javascript", stato: false, id_domanda:4),
        RispoteEsame(id: 5, descrizione: "Puthon", stato: false, id_domanda:7),
        RispoteEsame(id: 6, descrizione: "CopyRight", stato: false, id_domanda:6),
        RispoteEsame(id: 7, descrizione: "Swift", stato: false, id_domanda:5),
        RispoteEsame(id: 8, descrizione: "Android", stato: false, id_domanda:8)
    ]
    var body: some View {
        TabView {
            ForEach(domandeEsame, id: \.id) { esame in
                QuestionView(singleQuestion: esame)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(.page(backgroundDisplayMode: .always))    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
