//
//  MapView.swift
//  listOfUniversities
//
//  Created by Macbook Pro on 24/03/2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    private func setRegion(_ coordinate:CLLocationCoordinate2D){
        
        region = MKCoordinateRegion(center: coordinate , span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2) )
        
    }
    
    var body: some View {
        
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
            }
        
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 31.4469, longitude: 74.2682))
}
