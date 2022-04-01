//
//  EventView.swift
//  Traveler1337
//
//  Created by apprenant47 on 29/03/2022.
//

import SwiftUI

struct EventView: View {
    var body: some View {
     
        NavigationView{
        ScrollView{
            ForEach(Cards) { card in
                
                
            ZStack {
           
                Image(card.image)
                    .resizable()
                    .frame(width: .infinity, height: 300)
                    .cornerRadius(15)
                    .shadow(color: .black, radius: 5, x: 5, y: 5)
                

        
        
                
                NavigationLink {
                    PageCardsView(card: card)
                } label: {
                    Text(card.titre)
                        .font(.title2)
                        .padding(.horizontal, 103)
                        .background()
                        .opacity(0.7)
                        .foregroundColor(.black)
                        .padding(.top,230)
                    
                    
                    
                }
                

            }
            .padding()
            
            }
            
            
            
            
            
            
            
            
            }
            
        .navigationBarTitle("Évènements")
        
            
        
        }
        
    }
        }

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}

