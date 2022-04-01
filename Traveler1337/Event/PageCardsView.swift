//
//  PageCardsView.swift
//  Traveler1337
//
//  Created by apprenant47 on 29/03/2022.
//

import SwiftUI

struct PageCardsView: View {
    @State private var showingAlert = false
    let card: CardStructure
    
    var body: some View {
        VStack {
            VStack(spacing : 20){
            Image(card.image)
            .resizable()
            .frame(width:.infinity, height: 300)
            
            Text(card.titre)
                .font(.title)
                .bold()
            
            }
            Text(card.text)
                .padding()
            
            Button {
                showingAlert = true
            } label: {
                Text("Enregistrer")
                    .frame(width: 250, height: 50)
                    .background(.purple)
                    .cornerRadius(50)
                    .foregroundColor(.white)
                
            }
            .alert("Evenement bien enregistré", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) { }

        
            
            
    
            
           
        }


    }
        .navigationBarTitleDisplayMode(.inline)
}

}
