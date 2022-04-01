//
//  Supprimer1View.swift
//  Traveler1337
//
//  Created by apprenant47 on 28/03/2022.
//

import SwiftUI

struct Supprimer1View: View {
    @State var showInfoModalView: Bool = false
    
    var body: some View {
        VStack{
        Text("Vous etes sur de vouloir supprimer votre compte ? ")
            .font(.title)
            .bold()
        
        ZStack { Button {
            showInfoModalView = true
    } label: {
        Label("Supprimer votre Compte", systemImage: "trash")
            .padding()
        
            
    }
          
    }
        
        .sheet(isPresented: $showInfoModalView) {
              reglageSupprime_View()
            }
}
}
}

struct Supprimer1View_Previews: PreviewProvider {
    static var previews: some View {
        Supprimer1View()
    }
}
