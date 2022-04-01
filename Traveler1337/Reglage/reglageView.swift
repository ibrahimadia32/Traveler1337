//
//  reglageView.swift
//  Traveler1337
//
//  Created by apprenant47 on 28/03/2022.
//

import SwiftUI

struct reglageView: View {
    var body: some View {
        
       
            
            
            List {
            
            NavigationLink(destination: reglageNameView()) {
                Text("Nom")
                    .padding()
                
            }
                
            NavigationLink(destination: reglagePrenomIView() ) {
                Text("Prénom")
                    .padding()
                
            }
            NavigationLink(destination: reglageEmailView()) {
                Text("E-mail")
                    .padding()
            }
            NavigationLink(destination: reglagePhoneView ()) {
                Text("Phone")
                    .padding()
            }
                NavigationLink(destination: Supprimer1View ()) {
                    Text("Supprimer")
                        .padding()
            }
            }
            .navigationTitle("Réglage Profil")
            .navigationBarTitleDisplayMode(.inline)
            
        
        
        
    }}

struct reglageView_Previews: PreviewProvider {
    static var previews: some View {
        reglageView()
    }
}
