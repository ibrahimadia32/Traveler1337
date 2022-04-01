//
//  Mapsdata.swift
//  Traveler1337
//
//  Created by apprenant47 on 29/03/2022.
//

import Foundation

import MapKit

struct SDF: Identifiable {
    
    let id = UUID()
    var position : CLLocationCoordinate2D
    let nom: String
    let image : String
    let text1 : String
    let text2 : String
    let text3 : String
    let text4 : String
    
    
}

class TableauSDF: ObservableObject {
   
    @Published var listSDF = tabbSDF
}

 var tabbSDF: [SDF] =
    [
    
        
        SDF( position: CLLocationCoordinate2D(latitude: 45.757598876953125, longitude: 4.9051008224487305),nom:"Sébastien",image:"perso1",text1:"36 ans, ancien chef de chantier, à la rue depuis 5 mois après avoir perdu son emploi à cause du covid",text2:"📍 En face de la Fnac à Bellecour",text3:"A BESOIN",text4: "d'une couverture, de vêtements chauds (manteau, bonnet, gilet, pantalon, paire de chaussettes, chaussures et caleçons). Quelques vivres et un petit peu de votre temps me seraient également bénéfiques"),
        SDF( position: CLLocationCoordinate2D(latitude: 45.7558905, longitude: 4.8964624),nom:"Octavia, 29 ans",image:"perso2",text1:"Sans lien famillialle, ni diplome",text2:"Assise dans l'avenue des platane, aprés le parc",text3:"A BESOIN",text4: "De vétements chaud, Nourriture, hygiéne, compagnie et motivation"),
        SDF( position: CLLocationCoordinate2D(latitude: 45.74846, longitude: 4.84671),nom:"Jules",image:"perso3",text1:"23 ans, étudiant, sans domicile fixe, a quitté le domicile familial à cause d'un beau-père violent, n'a pas les moyens de payer un loyer",text2:"📍Demande de l'aide tous les soirs de 18 à 22h devant la bibliothèque universitaire, rue Chevreul",text3:"A BESOIN",text4: "d'un hébergement en urgence, chambre ou logement, d'un petit boulot étudiant (expérimenté dans la vente) ainsi que de repas et vêtements homme taille XL"),
        SDF( position: CLLocationCoordinate2D(latitude: 45.7597887, longitude: 4.8953753),nom:"Carlos",image:"perso4",text1:"29 ans, sans papiers, immigré mexicain rescapé des cartels, venu en France dans l'espoir de se former chez Simplon pour devenir un jour webmaster",text2:"📍entrée du parking de Carrefour Vénissieux",text3:"A BESOIN",text4: "de trouver un emploi de toute urgence, ainsi qu'un logement et quelques denrées pour subsister"),
        SDF( position: CLLocationCoordinate2D(latitude: 45.7632515, longitude: 4.9142948),nom:"Eric",image:"perso5",text1:"Ancien trader, a la rue depuis mainteant 5 ans suite a un conflit d'entreprise",text2:"📍Situer grande place du pont, sous le hall",text3:"A BESOIN",text4: "D'une aide temporaire pour la reprise d'un travail (hygiéne, nourriture)")
      
    
    
    ]
                




