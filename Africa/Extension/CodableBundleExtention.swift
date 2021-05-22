//
//  CodableBundleExtention.swift
//  Africa
//
//  Created by Felipe Lobo on 20/04/21.
//

import SwiftUI

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        // create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        // Create a decoder
        let decoder = JSONDecoder()
        // Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        // Return ready-to-use data
        return loaded
    }
}
