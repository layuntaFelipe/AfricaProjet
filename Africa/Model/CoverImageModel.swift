//
//  CoverImageModel.swift
//  Africa
//
//  Created by Felipe Lobo on 20/04/21.
//

import SwiftUI

struct CoverImageModel: Identifiable, Codable{
    let id: Int
    let name: String
}

struct CoverImages: Codable, Identifiable{
    let id: Int
    let name: String
}
