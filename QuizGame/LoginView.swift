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
        return username.isEmpty && password.isEmpty
    }

    var checkRegistration: Bool {
        return username.isEmpty && password.isEmpty && nome.isEmpty && cognome.isEmpty && email.isEmpty
    }
    mutating func emptyFileds(){
        username = ""
        password = ""
    }
    var notEmptyFields: Bool {
        return username.isEmpty || password.isEmpty || nome.isEmpty || cognome.isEmpty || email.isEmpty
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

struct LoginView: View {
    @State var userValue = UserData(nome: "", cognome: "")
    @State private var readyToNavigate : Bool = false
    @State private var controlloLogin: Bool = false
    var body: some View {
        NavigationStack{
            VStack(spacing: 20) {
                
                Image("ITSARicon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .padding(.vertical)
                MyTextField(withIcon: "person.fill", textValue: $userValue.username,
                            isMandatory: true, textHint: "username")
                MyTextField(withIcon: "key.fill", textValue: $userValue.password,
                            isMandatory: true, isSecret: true, textHint: "password")
               
                    /*NavigationLink(destination: MenuView().navigationBarBackButtonHidden(true)){
                        Text("Login")
                    }
                        .foregroundColor(.purple)
                        .disabled(userValue.checkLogin)
                    
                    Button("Pulisci") {
                        userValue.emptyFileds()
                    }.foregroundColor(.green)
                        .disabled(userValue.checkReset)*/

                    
                VStack() {
                            Button {
                                RegisteredUsers.getUsers()
                                for user in RegisteredUsers.users {
                                    if(user.username == userValue.username && user.password == userValue.password) {
                                        readyToNavigate = true
                                        controlloLogin = false
                                        break
                                    }
                                    controlloLogin = true
                                }
                            } label: {
                                Text("Login")
                            }.frame(maxWidth: 80)
                            .padding()
                            .padding(.horizontal)
                            .background(Color.red)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            
                            
                            
                            NavigationLink(destination: RegisterView()) {
                                Text("Registrati")
                            }.frame(maxWidth: 80)
                            .padding()
                            .padding(.horizontal)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            
                    Text(controlloLogin ? "Username o password errato" : "" ).foregroundColor(.red)
    
                        }
                        .navigationDestination(isPresented: $readyToNavigate) {
                            MenuView().navigationBarBackButtonHidden(true)
                        }
                    
                    
                
            }
        }
    }
}

/*#Preview {
    LoginView()
}*/

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
