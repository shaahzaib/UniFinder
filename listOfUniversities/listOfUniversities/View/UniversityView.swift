//
//  UniversityView.swift
//  listOfUniversities
//
//  Created by Macbook Pro on 24/03/2025.
//

import SwiftUI

struct UniversityView: View {
    
    var image:Image
    var body: some View {
        image.clipShape(Circle())
            .overlay(Circle().stroke(Color.white)).shadow(radius: 7)
        
        
    }
}

#Preview {
    UniversityView(image: Image("ucp") )
}
