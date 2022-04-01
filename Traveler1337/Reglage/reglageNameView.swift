//
//  reglageNameView.swift
//  Traveler1337
//
//  Created by apprenant47 on 28/03/2022.
//

import SwiftUI

struct reglageNameView: View {
    @State private var Nom: String = ""
    var body: some View {
        Form {
            Section {
                HStack {
                    Image("Image3")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .cornerRadius(10)
                TextField("Rapphael", text:$Nom)
                .textContentType(.name)}
                
                
                
            }
            
                Image("pnom")
                    .resizable()
                    .frame(width: 320, height: 325)
    }

    }
}

struct reglageNameView_Previews: PreviewProvider {
    static var previews: some View {
        reglageNameView()
    }
}
