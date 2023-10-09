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
            Text("Avvia Simulazione")
            .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "play.circle.fill")
                    Text("Home")
                }
            Text("Materie")
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem {
            Image(systemName: "book.circle.fill")
            Text("Materie")
            }
            Text("Risultati precedenti")
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem {
            Image(systemName: "timer.circle.fill")
            Text("Cronologia")
            }
            Text("Impostazioni e profilo")
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem {
            Image(systemName: "gear.circle.fill")
            Text("Impostazioni")
            }
        }
    }
}

struct titolo: View {
    var titolo: String
    var body: some View {
        Text(titolo).font(.system(size: 45)).frame(maxWidth: .infinity, alignment: .leading).padding()
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            LaunchView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
