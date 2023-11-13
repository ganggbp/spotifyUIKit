//
//  FeaturedPlaylistsResponse.swift
//  SpotifyUIKit
//
//  Created by Burit Boonkorn on 14/11/2566 BE.
//

import Foundation

struct FeaturedPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}

struct PlaylistResponse: Codable {
    let items: [PlayList]
}

struct User: Codable {
    let display_name: String
    let external_urls: [String: String]
    let id: String
}
