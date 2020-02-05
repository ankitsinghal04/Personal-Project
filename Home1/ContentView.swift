//
//  ContentView.swift
//  Home1
//
//  Created by Ankit Singhal on 19.01.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
                   
            HomeView(course: courseData[0])
                       .tabItem {
                           VStack {
                               Image(systemName: "rectangle.on.rectangle.angled")
                               Text("Today")
                   }
               }
               .tag(0)
                   
               ArenaView()
                       .tabItem {
                           VStack {
                               Image(systemName: "flame.fill")
                               Text("Studio")
                   }
               }
               .tag(1)
                   
               AccountView()
                       .tabItem {
                           VStack {
                               Image(systemName: "person")
                               Text("You")
                   }
               }
               .tag(2)
                   
               }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
