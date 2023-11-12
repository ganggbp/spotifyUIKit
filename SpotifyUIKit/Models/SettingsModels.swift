//
//  SettingsModels.swift
//  SpotifyUIKit
//
//  Created by Burit Boonkorn on 13/11/2566 BE.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
