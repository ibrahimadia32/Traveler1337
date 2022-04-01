//
//  ContentView.swift
//  Traveler1337
//
//  Created by apprenant47 on 23/03/2022.
//

import SwiftUI

struct Tabbar: View {
    var body: some View {
        
        VStack{
            TabView{
                
                
        ContentView()
                    .tabItem {
                    Label("Maps", systemImage: "map")
                            }
        AssosView()
            .tabItem {
            Label("Assoc", systemImage: "face.smiling")
                        }

        EventView()
            .tabItem {
            Label("Event", systemImage: "theatermasks.fill")
                        }
        ProfilView()
                .tabItem {
                Label("Profil", systemImage: "person")
                    }
                
           
                
            }}
    }

}
struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
