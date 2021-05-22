//
//  VideoModel.swift
//  Africa
//
//  Created by Felipe Lobo on 21/04/21.
//

import Foundation

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
