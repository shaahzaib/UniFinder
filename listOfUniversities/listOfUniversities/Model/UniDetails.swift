//
//  UniDetails.swift
//  listOfUniversities
//
//  Created by Macbook Pro on 29/03/2025.
//

import SwiftUI

struct UniDetails: View {
    var uni : University
    var body: some View {
        ScrollView{
            VStack {
                MapView(coordinate: uni.localCoordinates).frame(height: 300)
                
                UniversityView(image: uni.image)
                    .padding(.top, -90.0)
                VStack(alignment: .leading) {
                    
                    Text(uni.name)
                        .font(.title)
                        .fontWeight(.bold)
                    HStack{
                        Text("\(uni.city),\(uni.country)")
                       
                        Spacer()
                        Text(uni.state)
                        
                    }.font(.subheadline).foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About  \(uni.name)")
                        .font(.headline)
                    
                    Text(uni.description)
                        .font(.callout)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                    
                }// vstack
                .padding()
            }
            
        }// scroll view
    }
}

#Preview {
    UniDetails(uni: universities[1])
}
