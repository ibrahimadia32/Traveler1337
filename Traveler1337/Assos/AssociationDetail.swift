//
//  AssociationDetail.swift
//  Traveler1337
//
//  Created by apprenant47 on 29/03/2022.
//

import SwiftUI

struct AssociationDetail: View {
    let association: Association
    var body: some View {
        ScrollView{
      
            VStack {
                
                // et Affiche l'image de l'association
                Image(association.image)
                    .resizable()
                    .frame(width: 185, height: 180)
                    .background(Color("Purpul"))
                    .cornerRadius(20)
                    .clipped()
                    .shadow(radius: 20)
                    

                // et le nom de l'association
                Text(association.name)
                    .padding()
                    
                
                
                Text(association.text)
//                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    
                    
                }
            }
    }
}

struct NavLink_Previews: PreviewProvider {
    static var previews: some View {
       AssociationDetail(association: tableauAssos[0])
    }
}
