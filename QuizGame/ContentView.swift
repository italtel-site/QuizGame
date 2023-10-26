//
//  ContentView.swift
//  QuizGame
//
//  Created by user243551 on 10/2/23.
//

import SwiftUI

struct MyTabNav: View {
    var body: some View {
        TabView{
            HomepageView()
            .tabItem {
                    Image(systemName: "play.circle.fill")
                    Text("Home")
                }
            SubjectsList()
            .tabItem {
            Image(systemName: "book.circle.fill")
            Text("Materie")
            }
            CronologiaView()
            .tabItem {
            Image(systemName: "timer.circle.fill")
            Text("Cronologia")
            }
            ImpostazioniView()
            .tabItem {
            Image(systemName: "gear.circle.fill")
            Text("Impostazioni")
            }
        }
    }
}



struct Titolo: View {
    var titolo: String
    var body: some View {
        Text(titolo).font(.system(size: 45)).frame(maxWidth: .infinity, alignment: .leading).padding()
    }
}

struct ContentView: View {
    var logged = false
    
    var body: some View {
        if logged{
            VStack{
                MenuView()
            }
        }
        else{
            VStack {
                LaunchView()
            }
            .padding()
        }
    }
}

/*#Preview {
    ContentView()
}*/

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
