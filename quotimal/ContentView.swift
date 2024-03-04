//
//  ContentView.swift
//  quotimal
//
//  Created by roger deutsch on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string:"https://cdn.pixabay.com/photo/2016/11/14/04/45/elephant-1822636_1280.jpg"))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
