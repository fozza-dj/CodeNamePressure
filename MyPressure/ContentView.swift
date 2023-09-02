//
//  ContentView.swift
//  MyPressure
//
//  Created by fozza on 2023/9/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Text("V")
                .bold()
                .font(.system(size:11))
                .frame(width: 15, height: 15)
                .foregroundColor(.yellow)
                .background(Color.red)
                .clipShape(Circle())
                .overlay(
                    RoundedRectangle(cornerRadius: 7.5)
                        .stroke(Color.white, lineWidth: 1)
                )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
