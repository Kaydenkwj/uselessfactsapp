//
//  ContentView.swift
//  useless facts app
//
//  Created by T Krobot on 1/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
                FactView()
                    .tabItem {
                        Label("Fact", systemImage: "exclamationmark.questionmark")
                    }
                QuizView()
                    .tabItem {
                        Label("Quiz", systemImage: "doc.fill")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
