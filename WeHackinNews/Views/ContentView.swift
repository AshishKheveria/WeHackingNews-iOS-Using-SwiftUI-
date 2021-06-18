//
//  ContentView.swift
//  WeHackinNews
//
//  Created by Ashish Kheveria on 19/03/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
            }
            .navigationBarTitle("WeHackinNews")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


