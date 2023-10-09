//
//  SwiftUIView.swift
//  QuizGame
//
//  Created by user243551 on 10/2/23.
// Ciao

import SwiftUI

struct SingleSubject: View{
  var icon: String
  var SBJtext: String
  var index: String

  var body: some View {
    NavigationLink(destination: RegisterView()){
      spacer()
      Image(icon)
      Text(/(index) - /(SBJtext)).padding(.top,20)
      spacer()
    }.frame(height: 80, width: 80)
  }

}

struct SubjectsList: View {
  var subjects : SingleSubject[] = {SingleSubject("1","apple","UFS01"),SingleSubject("2","apple","UFS01"),SingleSubject("3","apple","UFS01"),SingleSubject("4","apple","UFS01")}
  var body: some View {
    NavigationStack{
      ScrollView{
        LazyVGrid(columns: 2){
          ForEach(subjects, id: ./self){
            value in value
          }
        }
      }
    }
  }
}

#Preview {
  SubjectsList()
}
