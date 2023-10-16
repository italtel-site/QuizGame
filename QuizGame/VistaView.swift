//
//  VistaView.swift
//  QuizGame
//
//  Created by user243551 on 10/13/23.
//

import SwiftUI

struct VistaView: View {
    var body: some View {
        VStack
        {
            TabView
            {
                Text("Simulazione")
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
                CronologiaView()
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
}

#Preview {
    VistaView()
}
