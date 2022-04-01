//
//  ProfilDetail.swift
//  Traveler1337
//
//  Created by apprenant47 on 30/03/2022.
//

import SwiftUI


struct ProfilDetails: View {
    let sdf : SDF
    var body: some View {
        
        VStack{

            Text(sdf.nom)
                    .font(.title)
                    .bold()
                    .frame(width: 200, height: 80)

            Image(sdf.image)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 270, height: 210)

            Text(sdf.text1)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 100)
                    .padding()

            Text(sdf.text2)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 100)

            Text(sdf.text3)
                    .font(.title)
                    .bold()
                    .frame(width: 200, height: 70)


            Text(sdf.text4)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 100)
                    }
                }
            }

struct modaleQUATRE_Previews: PreviewProvider {
    static var previews: some View {
        ProfilDetails(sdf: tabbSDF[0])
    }
}
