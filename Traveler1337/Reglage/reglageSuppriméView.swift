//
//  reglageSuppriméView.swift
//  Traveler1337
//
//  Created by apprenant47 on 28/03/2022.
//

import SwiftUI

struct reglageSupprime_View: View {
    var body: some View {
        VStack{
        Text("Votre compte a été bien supprimé")
            .font(.title)
            .bold()
        Image("smile")
                .resizable()
                .frame(width: 350, height: 200)
            
        }
    }
}

struct reglageSupprime_View_Previews: PreviewProvider {
    static var previews: some View {
        reglageSupprime_View()
    }
}
