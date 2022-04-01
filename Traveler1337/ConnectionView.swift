//
//  ConnectionView.swift
//  Traveler1337
//
//  Created by apprenant47 on 23/03/2022.
//

import SwiftUI

import SwiftUI

struct ConnectionView: View {
    @Binding var showActionSheet: Bool
    @State private var nom = ""
    @State private var password = ""
    var body: some View {
        VStack(spacing: 20) {
            
            Image("iconnexion")
                .resizable()
                .frame(width: 290, height: 250)
               
                    Text("Connexion")
                        .padding(.bottom)
                        .foregroundColor(.purple)
                        .font(.title)
            ZStack{
                Rectangle()
                .foregroundColor(Color("mauve"))
                .frame(width: 350, height: 60)
                .cornerRadius(25)
                
                
                
                
                TextField("Nom/Email", text: $nom)
                    .frame(width: 300, height: 50)
                }
            
            ZStack{
            Rectangle()
            .foregroundColor(Color("mauve"))
            .frame(width: 350, height: 60)
            .cornerRadius(25)
            
                    SecureField("Mot de passe", text: $password)
                .frame(width: 300, height: 50)
                       
                    
            }
            
            Button {
                //action
            } label: {
                Text("Mot de passe oublié ?")
                    .foregroundColor(.purple)
                    
        
            }
            
            Button {
                showActionSheet = false
            } label: {
                Text("Connexion")
                    .frame(width: 250, height: 50)
                    .background(.purple)
                    .cornerRadius(50)
                    .foregroundColor(.white)
        }

        
        }
    }

struct ConnectionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionView(showActionSheet: .constant(true))
    }
}

}

