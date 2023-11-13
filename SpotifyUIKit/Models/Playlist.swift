//
//  Playlist.swift
//  SpotifyUIKit
//
//  Created by Burit Boonkorn on 10/11/2566 BE.
//

import Foundation

struct PlayList: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let owner: User
}
