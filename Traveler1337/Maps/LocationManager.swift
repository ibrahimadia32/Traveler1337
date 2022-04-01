//
//  LocationManager.swift
//  SwiftUIExercices
//
//  Created by Maxime Lathiere on 24/03/2022.
//

import Combine
import MapKit

class LocationManager: ObservableObject {
    
    let locationManager = CLLocationManager()
    
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 45.759348, longitude: 4.895321), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)) {
        willSet { objectWillChange.send() }
    }
    
    init() {
        configurer()
    }
    
    func configurer() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
