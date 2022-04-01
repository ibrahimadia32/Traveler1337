//
//  ProfilView.swift
//  Traveler1337
//
//  Created by apprenant47 on 23/03/2022.
//

import SwiftUI
import SwiftUI

struct ProfilView: View {
    
    @State var showActionSheet = true
    @State private var age = ""
    var body: some View {
        NavigationView{
        VStack{
            ZStack{
                Rectangle()
                    .frame(width: 395, height: 100)
                    .foregroundColor(.purple)
                VStack(spacing : 0){
                    HStack(spacing: 50){
                        Image("profil")
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 200, height: 250)
                            .padding()
                        
                    }
                    Text("Thomas ")
                        .padding()
                        .font(.title)
                        .foregroundColor(.white)
                        .scaledToFill()
                        
                    
                    Form{
                        Section{
                            Text("Profil : Donateur")
                        }
                        
                        Section{
                            Text("Age : 27 ans")
                        }
                        
                        Section{
                            Text("Sexe : Homme")
                        }
                        
                        Section{
                            Text("Expérience : 5 ans")
                        }
                        Section{
                            Text("Présent depuis 2015")
                        }
                        
                    }
                    
                }
                .sheet(isPresented: $showActionSheet) {
                    ConnectionView(showActionSheet: $showActionSheet)
                
                
            }
            
            }
       
                
            Spacer()
            
        }
        .navigationBarTitle("Profil")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                HStack{
            

    
            NavigationLink(destination: reglageView()) {
                
                Image(systemName:"gearshape.fill")
                    .foregroundColor(.purple)
            }
            
        } )
            
            
            
        }
            
        }
      
       
    
}


struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}


