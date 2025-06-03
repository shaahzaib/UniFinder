//
//  University.swift
//  listOfUniversities
//
//  Created by Macbook Pro on 24/03/2025.
//

import SwiftUI
import CoreLocation

struct University:Hashable,Codable,Identifiable{
  
    
    var name:String
    var city:String
    var state:String
    var id:Int
   var country:String
    var description:String
    
    
    private var imageName:String
    
    var image: Image{
        Image(imageName)
    } 
    
    private var coordinates:Coordinates
    var localCoordinates:CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    struct Coordinates:Hashable,Codable{
        
        var latitude:Double
        var longitude:Double
    }
}
