//
//  DetailsMovieViewModel.swift
//  MovieTrending
//
//  Created by arthur takahashi on 20/04/24.
//

import Foundation

class DetailsMovieViewModel {
    var movie: Movie
    var movieImage: URL?
    var movieTitle: String
    var movieDescription: String
    var movieID: Int
    
    init(movie: Movie) {
        self.movie = movie
        self.movieTitle = movie.title ?? movie.name ?? ""
        self.movieDescription = movie.overView ?? ""
        self.movieID = movie.id
        // this next variable must be intialized after the other ones
        self.movieImage = makeImageURL(movie.backdropPath ?? "")

    }
    
    func makeImageURL(_ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAddress)\(imageCode)")
    }
}
