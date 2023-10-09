//
//  SwiftUIView.swift
//  QuizGame
//
//  Created by user243551 on 10/2/23.
// Ciao

import SwiftUI

struct SingleSubject{
    
  var index: String
  var icon: String
  var SBJtext: String

  

}

struct SubjectsList: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var subjects = [SingleSubject(index: "1",icon: "arrow.right",SBJtext: "UFS01"),SingleSubject(index: "2",icon: "arrow.right",SBJtext: "UFS01"),SingleSubject(index: "3",icon: "arrow.right",SBJtext: "UFS01"),SingleSubject(index: "4",icon: "arrow.right",SBJtext: "UFS01")]
  var body: some View {
    NavigationStack{
      ScrollView{
        LazyVGrid(columns: columns){
            ForEach(subjects, id: \.index){
              value in NavigationLink(destination: RegisterView()){
                  Spacer()
                  Image(systemName: value.icon)
                  Text(value.index + "-" + value.SBJtext).padding(.top,20)
                  Spacer()
                }.frame(width: 80, height: 80)
          }
        }
      }
    }
  }
}

#Preview {
  SubjectsList()
}
