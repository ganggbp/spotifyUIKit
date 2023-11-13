//
//  HomeViewController.swift
//  SpotifyUIKit
//
//  Created by Burit Boonkorn on 10/11/2566 BE.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "gear"),
            style: .done,
            target: self,
            action: #selector(didTapSettings)
        )
        
        fetchData()
    }
    
    private func fetchData() {
        APICaller.shared.getRecommendedGenres { result in
            switch result {
                case .success(let model):
                    let genres = model.genres
                    var seeds = Set<String>()
                    while seeds.count < 5 {
                        if let randomGenre = genres.randomElement() {
                            seeds.insert(randomGenre)
                        }
                    }
                    
                    APICaller.shared.getRecommendations(genres: seeds) { _ in
                        
                    }
                    
                case .failure(let error): break
            }
        }
    }
    
    @objc func didTapSettings() {
        let vc = SettingViewController()
        vc.title = "Settings"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
}

