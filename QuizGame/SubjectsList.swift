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

struct SubjectStyle : View{
    var value: SingleSubject
  var body : some View {
    NavigationLink(destination: RegisterView()){
      Spacer()
        VStack{
            Image(systemName: value.icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75)
            Text(value.index + " - " + value.SBJtext)
                .padding(.top,10).font(.title2)
        }
        Spacer()
    }.frame(width: 160, height: 160)
          .background(
              .gray,
              in: RoundedRectangle(cornerRadius: 12)

          )
          .buttonStyle(PlainButtonStyle())
          
          
          
          
  }
}

struct SubjectsList: View {
    
  let columns = [GridItem(.flexible(),spacing: 0), GridItem(.flexible(),spacing: 0)]  
  var subjects = [SingleSubject(index: "1",icon: "globe",SBJtext: "UFS01"),SingleSubject(index: "2",icon: "globe",SBJtext: "UFS01"),SingleSubject(index: "3",icon: "globe",SBJtext: "UFS01"),SingleSubject(index: "4",icon: "globe",SBJtext: "UFS01"),SingleSubject(index: "5",icon: "globe",SBJtext: "UFS01"),SingleSubject(index: "6",icon: "globe",SBJtext: "UFS01"),SingleSubject(index: "7",icon: "globe",SBJtext: "UFS01"),SingleSubject(index: "8",icon: "globe",SBJtext: "UFS01"),SingleSubject(index: "9",icon: "globe",SBJtext: "UFS01"),SingleSubject(index: "10",icon: "globe",SBJtext: "UFS01"),SingleSubject(index: "11",icon: "globe",SBJtext: "UFS01")]
  
  var body: some View {
      VStack{
          Titolo(titolo: 	"Materie")
          Text("Scegli l’unità d’esame")
              .font(.title2)
              .padding(.bottom,20)
          NavigationStack{
              ScrollView{
                  LazyVGrid(columns: columns,spacing: 20){
                      ForEach(subjects, id: \.index){
                          value in
                          SubjectStyle(value: value)
                      }
                  }
              }
          }
      }
  }
}


/*#Preview {
  SubjectsList()
}*/

struct SubjectList_Previews: PreviewProvider {
    static var previews: some View {
        SubjectsList()
    }
}
