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

    var checkLogin: Bool {
        return username.isEmpty || password.isEmpty
    }

    var checkReset: Bool {
        return !username.isEmpty || !password.isEmpty
    }

    var checkRegistration: Bool {
        return username.isEmpty && password.isEmpty && nome.isEmpty && cognome.isEmpty && email.isEmpty
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
        .stroke(isMandatary && textValue.isEmpty ? .red : .gray, lineWidth: 1))
        .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
        }
}

struct LoginView: View {
    @State var userValue = UserData(nome: "", cognome: "")
    var body: some View {
        VStack {
            Image("ITSARicon")
            MyTextField(withIcon: "person.fill", textValue: $userValue.username,
            isMandatory: true, textHint: "username")
            MyTextField(withIcon: "key.fill", textValue: $userValue.password,
            isMandatory: true, isSecret: true, textHint: "password")
        HStack(spacing: 50) {
            Button("Login") {
            //WebService to call
            }.foregroundColor(.purple)
            .disabled(userValue.checkLogin)

            Button("Pulisci") {
            userValue.emptyFileds()
            }.foregroundColor(.green)
            .disabled(userValue.checkReset)
            }
        }
    }
}

#Preview {
    LoginView()
}
