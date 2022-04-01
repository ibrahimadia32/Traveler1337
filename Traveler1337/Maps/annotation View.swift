//
//  annotation View.swift
//  Traveler1337
//
//  Created by apprenant47 on 29/03/2022.
//

import SwiftUI

struct annotation_View: View {
    var body: some View {
        VStack(spacing: 10) {
              Image(systemName: "figure.walk")
                .font(.title)
                .foregroundColor(Color("violett"))
              
              Image(systemName: "arrowtriangle.down.fill")
                .font(.caption)
                .foregroundColor(Color("violett"))
                .offset(x: 0, y: -5)
            }
    }
}

struct annotation_View_Previews: PreviewProvider {
    static var previews: some View {
        annotation_View()
    }
}
