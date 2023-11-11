//
//  AuthResponse.swift
//  SpotifyUIKit
//
//  Created by Burit Boonkorn on 11/11/2566 BE.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
}
