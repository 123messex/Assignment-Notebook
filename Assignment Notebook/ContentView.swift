//
//  ContentView.swift
//  Assignment Notebook
//
//  Created by Student on 2/8/21.
//

import SwiftUI

        struct ContentView: View {
            var body: some View {
                NavigationView {
                List {
                    Text("First Thing")
                    Text("Second Thing")
                    Text("Third Thing")
                    Text("Fourth Thing")
                    Text("Fifth Thing")
                }
                .navigationBarTitle("Things")
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

