//
//  SwiftUIView.swift
//  QuizGame
//
//  Created by user243551 on 10/2/23.
// Ciao

import SwiftUI

struct UserData {
    var username: String = ""
    var password: String = ""
    var nome: String = ""
    var cognome: String = ""
    var email: String = ""

    var notEmptyFields: Bool {
        return username.isEmpty || password.isEmpty || nome.isEmpty || cognome.isEmpty || email.isEmpty
    }

    var checkRegistration: Bool {
        return username.isEmpty && password.isEmpty && nome.isEmpty && cognome.isEmpty && email.isEmpty
    }
    mutating func emptyFileds(){
        username = ""
        password = ""
    }
    
}

struct MyTextField: View {
    var withIcon: String
    @Binding var textValue: String
    var isMandatory: Bool = false
    var isSecret: Bool = false
    var textHint: String
    var body: some View {
            HStack {
                Image(systemName: withIcon)
            if isSecret {
                SecureField(textHint, text: $textValue)
            }
            else {
                TextField(textHint, text: $textValue)
            }
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 8)
        .stroke(isMandatory && textValue.isEmpty ? .red : .gray, lineWidth: 1))
        .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
        }
}

struct RegisterView: View {
    @State var userValue = UserData()
    var body: some View {
        NavigationStack{
          VStack {
            Image("ITSARicon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250)
                .padding(.vertical)
            form{
                Section(header: Text("Dati personali")){    
                  MyTextField(withIcon: "person.fill", textValue: $userValue.nome,
                  isMandatory: true, textHint: "Nome")
                  MyTextField(withIcon: "key.fill", textValue: $userValue.cognome,
                  isMandatory: true, textHint: "Cognome")    
                  MyTextField(withIcon: "key.fill", textValue: $userValue.email,
                  isMandatory: true, textHint: "Email")    
                }
                Section(header: Text("Dati di login")){    
                  MyTextField(withIcon: "person.fill", textValue: $userValue.username,
                  isMandatory: true, textHint: "username")
                  MyTextField(withIcon: "key.fill", textValue: $userValue.password,
                  isMandatory: true, isSecret: true, textHint: "password")    
                }
               
            }
          VStack(spacing: 50) {
            Button("Pulisci") {
              userValue.emptyFileds()
            }
              .foregroundColor(.green)
              .disabled(userValue.notEmptyFields)
            NavigationLink(destination: LoginView()){
                Text("Registrati")
                  .font(.title2)
            }
              .padding()
              .padding(.horizontal)
              .background(Color.red)
              .cornerRadius(10)
              .foregroundColor(.white)
            }
          }
        }
      }
}

#Preview {
    LoginView()
}
