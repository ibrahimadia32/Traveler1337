//
//  reglagePhoneView.swift
//  Traveler1337
//
//  Created by apprenant47 on 28/03/2022.
//

import SwiftUI

struct reglagePhoneView: View {
    @State private var Phone: String = ""
    var body: some View {
        
        Form {
        Section {
            HStack {
                Image(systemName:"phone")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(10)
            TextField("06 00 00 00 00", text:$Phone)
                .keyboardType(.phonePad)}
            
           
    }
            Image("phonee")
                .resizable()
                .frame(width: 250, height: 400)
        }
    }
}

struct reglagePhoneView_Previews: PreviewProvider {
    static var previews: some View {
        reglagePhoneView()
    }
}
