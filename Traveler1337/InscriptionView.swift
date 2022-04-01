//
//  InscriptionView.swift
//  Traveler1337
//
//  Created by apprenant47 on 23/03/2022.
//

import SwiftUI

struct InscriptionView: View {
    @State private var prenom = ""
    @State private var nom = ""
    @State private var password = ""
    @State private var confirmpassword = ""
    @State private var rue = ""
    @State private var ville = ""
    @State private var telephone = ""
    @State private var email = ""
    var body: some View {
    
            VStack(spacing: 10) {
                   
                        Text("Inscription")
                            .padding(.bottom)
                            .foregroundColor(.purple)
                            .font(.title)
                ZStack{
                    Rectangle()
                    .foregroundColor(Color("mauve"))
                    .frame(width: 350, height: 60)
                    .cornerRadius(25)
                    
                    
                    
                    
                    TextField("Prenom", text: $prenom)
                        .frame(width: 300, height: 50)
                
                }
                
                ZStack{
                Rectangle()
                .foregroundColor(Color("mauve"))
                .frame(width: 350, height: 60)
                .cornerRadius(25)
                        
                            TextField("Nom", text: $nom)
                    .frame(width: 300, height: 50)
                               
                }
      
                
                ZStack{
                Rectangle()
                .foregroundColor(Color("mauve"))
                .frame(width: 350, height: 60)
                .cornerRadius(25)
                
                        TextField("Confirmer votre Email", text: $email)
                    .frame(width: 300, height: 50)
                           
                        
                }
                    
                ZStack{
                Rectangle()
                .foregroundColor(Color("mauve"))
                .frame(width: 350, height: 60)
                .cornerRadius(25)
                        SecureField("Créez votre mot de passe", text: $password)
                    .frame(width: 300, height: 50)
                            
                }
                   

                ZStack{
                Rectangle()
                .foregroundColor(Color("mauve"))
                .frame(width: 350, height: 60)
                .cornerRadius(25)
                        SecureField("Confirmer votre mot de passe", text: $rue)
                    .frame(width: 300, height: 50)
                        
    
                            
                }
                ZStack{
                Rectangle()
                .foregroundColor(Color("mauve"))
                .frame(width: 350, height: 60)
                .cornerRadius(25)
                TextField("Addresse", text: $ville)
                                  .frame(width: 300, height: 50)
                
                }
                
                ZStack{
                Rectangle()
                .foregroundColor(Color("mauve"))
                .frame(width: 350, height: 60)
                .cornerRadius(25)
                    TextField("Téléphone", text: $telephone)
                    .frame(width: 300, height: 50)
                      
             
                }
                
                Button {
                    //
                } label: {
                    Text("S'inscrire")
                        .frame(width: 250, height: 50)
                        .background(.purple)
                        .cornerRadius(50)
                        .foregroundColor(.white)
            
                }

                HStack{
                Text("already  have an account ? ")
                        .foregroundColor(.secondary)
                Text("Sign in")
                        .foregroundColor(.purple)
                    
                }
                
              }

        }
        

struct InscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        InscriptionView()
    }
}

}
