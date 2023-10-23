//
//  SwiftUIView.swift
//  QuizGame
//
//  Created by user243551 on 10/2/23.
// Ciao

import SwiftUI





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
            Form{
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

/*#Preview {
    RegisterView()
}*/

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
