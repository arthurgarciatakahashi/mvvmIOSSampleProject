//
//  MainViewModel.swift
//  MovieTrending
//
//  Created by arthur takahashi on 19/04/24.
//

import Foundation

class MainViewModel {
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRows(in section: Int) -> Int {
        10
    }
    
    func getData() {
        APICaller.getTrendingMovies { (result) in
            switch result {
            case .success(let data):
                print("Top trending counts: \(data.results.count)")
            case .failure(let error):
                print(error)
            }
        }
    }
}
