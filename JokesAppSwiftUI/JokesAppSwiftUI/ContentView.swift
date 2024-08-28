//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Furkan buğra karcı on 14.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var JokesVM=JokesViewModel()
    var body: some View {
        NavigationView{
            List(JokesVM.jokes) { element in
                Text(element.joke)
            }.navigationTitle(Text("JokesApp"))
        }
    }
}

#Preview {
    ContentView()
}
