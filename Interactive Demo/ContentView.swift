//
//  ContentView.swift
//  Interactive Demo
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct ContentView: View
{
    @State private var name = ""
    @State private var textTitle = "what is your name?"
    
    var body: some View
    {
        VStack
        {
            Text(textTitle)
                .font(.title)
            
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
