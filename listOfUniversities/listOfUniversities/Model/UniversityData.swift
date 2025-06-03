//
//  ModelData.swift
//  SwiftUI_Landmarks
//
//  Created by Yogesh Patel on 20/03/21.
//
import SwiftUI

var universities: [University] = load("universitiesData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // Ensure the file exists in the main bundle.
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in the main bundle.")
    }
    
    do {
        // Attempt to load the data from the file.
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from the main bundle. Error: \(error)")
    }
    
    do {
        // Attempt to decode the data into the expected type.
        let decoder = JSONDecoder()
        let decodedData = try decoder.decode(T.self, from: data)
        return decodedData
    } catch {
        fatalError("Couldn't decode \(filename) into \(T.self). Error: \(error)")
    }
}

