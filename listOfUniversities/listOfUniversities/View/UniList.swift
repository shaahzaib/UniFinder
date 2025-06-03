//
//  UniList.swift
//  listOfUniversities
//
//  Created by Macbook Pro on 29/03/2025.
//

import SwiftUI

struct UniList: View {
    var body: some View {
        
        NavigationView {
            List(universities){university in
                NavigationLink(destination: UniDetails(uni: university)){
                    UniRowView(uni:university )
                }
            }
            .padding(.trailing)
            
            .navigationTitle("Pakistan Universities")
        }

       
        
    }
}

#Preview {
    UniList()
}
