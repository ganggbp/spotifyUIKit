//
//  Artist.swift
//  SpotifyUIKit
//
//  Created by Burit Boonkorn on 10/11/2566 BE.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let external_urls: [String: String]
}
