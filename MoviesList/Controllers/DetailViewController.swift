//
//  DetailViewController.swift
//  MoviesList
//
//  Created by elina.zambere on 11/02/2021.
//

import UIKit

class DetailViewController: UIViewController {
    var movie: Movie!
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieImageView?.layer.cornerRadius = 30
        movieImageView?.clipsToBounds = true
        
        
        //movieImageView?.layer.borderColor = UIColor.white.cgColor
        //movieImageView?.layer.borderWidth = 5
        
        if movie != nil {
            movieImageView.image = UIImage(named: movie.moviePoster)
            movieNameLabel.text = movie.movieName + " / Directed by: " + movie.directorName
            movieNameLabel.numberOfLines = 3
            
        }
    }
}
