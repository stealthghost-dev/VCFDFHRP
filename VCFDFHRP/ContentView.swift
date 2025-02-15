//
//  ContentView.swift
//  VCFDFHRP
//
//  Created by Chavez, Joe on 2/14/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationStack { // This creates a navigation context for the views
                VStack {
                    Text("Welcome to the Map App")
                        .font(.largeTitle)
                        .padding()
                    
                    // Button to navigate to the map view
                    NavigationLink(destination: MapViewScreen()) {
                        Text("Go to Map")
                            .font(.title2)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
}

#Preview {
    ContentView()
}
