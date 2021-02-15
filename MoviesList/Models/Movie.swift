//
//  Movie.swift
//  MoviesList
//
//  Created by elina.zambere on 11/02/2021.
//

import Foundation

struct Movie {
    
    let movieName: String
    let directorName: String
    let moviePoster: String
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []
        
        let movieName = DataManager.shared.movieName
        let directorName = DataManager.shared.directorName
        let moviePoster = DataManager.shared.moviePoster
        
        for index in 0..<movieName.count {
            let movie = Movie(movieName: movieName[index], directorName: directorName[index], moviePoster: moviePoster[index])
            movies.append(movie)
        }
        
        return movies
        
    }
    
}
