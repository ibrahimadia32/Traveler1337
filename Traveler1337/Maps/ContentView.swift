//
//  ContentView.swift
//  Traveler1337
//
//  Created by apprenant47 on 29/03/2022.
//

import MapKit
import SwiftUI

struct ContentView: View {
    @State var selectedItem: SDF?
    @State var showInfoModalViewAjout: Bool = false
    @ObservedObject var tableauSDF = TableauSDF()
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            VStack{
                Map(coordinateRegion: $locationManager.region, showsUserLocation: true, annotationItems:tableauSDF.listSDF
                ){
                    
                    sdf in
                    
                    
                    MapAnnotation(coordinate: sdf.position) {
                        
                        Button {
                            selectedItem = sdf
                            
                            
                            
                        }
                    label: {
                        
                        VStack {
                            annotation_View()
                            
                        }
                        
                        
                    }
                
                }
                
                
                }
            }
            
            .sheet(item: $selectedItem) {
                selectedItem = nil
            } content: { sdf in
                ProfilDetails(sdf: sdf)
            }

            
            
            
            Button {
                
                
                //action
                
                
                
            } label: {
                //                Image(systemName: "plus").foregroundColor(.white)
                //                frame(width: 50, height: 50, alignment: .center)
                //                    .foregroundColor(.purple)
            }
            
            Button {
                showInfoModalViewAjout = true
                
            } label: {
                Image(systemName: "plus.circle.fill")
                    .font(.largeTitle)
                
                    
            }
            .sheet(isPresented: $showInfoModalViewAjout) {
               ModaleAjoutView(tableauSDF: tableauSDF)
            
            
        }
        
        
    }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


