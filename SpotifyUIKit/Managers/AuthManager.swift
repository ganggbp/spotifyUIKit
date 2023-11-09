//
//  AuthManager.swift
//  SpotifyUIKit
//
//  Created by Burit Boonkorn on 10/11/2566 BE.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    private init() {
        
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
