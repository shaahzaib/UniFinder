//
//  UniRowView.swift
//  listOfUniversities
//
//  Created by Macbook Pro on 29/03/2025.
//

import SwiftUI

struct UniRowView: View {
    
    var uni:University
    
    var body: some View {
        HStack{
            uni.image.resizable().frame(width: 50, height: 50).cornerRadius(8)
            Text(uni.name)
            Spacer()
        }
    }
}

#Preview {
    UniRowView(uni: universities[0])
}
