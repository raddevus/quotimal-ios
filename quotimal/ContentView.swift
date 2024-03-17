//
//  ContentView.swift
//  quotimal
//
//  Created by roger deutsch on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemGray)
                .ignoresSafeArea()
            
            VStack (alignment: .leading, spacing:20.0   ){
                AsyncImage(url: URL(string:"https://cdn.pixabay.com/photo/2016/11/14/04/45/elephant-1822636_1280.jpg")){
                    phase in
                    if let image = phase.image{
                        image
                        .resizable()
                        .scaledToFit()
                    }
                    else if phase.error != nil{
                        Text("Error loading image.")
                    }else{
                        ProgressView()
                    }
                }.cornerRadius(15)
                    
                .padding()
                Text("This is the quote that you are looking for.")
                    .font(.title)
                    .padding()
                    
            }
            .background(Rectangle().foregroundColor(.white ))
            
            .cornerRadius(10)
            .shadow(radius: 10 )
            .padding()
        }
        }
        
}

#Preview {
    ContentView()
}
