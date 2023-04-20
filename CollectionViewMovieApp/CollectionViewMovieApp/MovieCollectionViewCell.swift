//
//  MovieCollectionViewCell.swift
//  CollectionViewMovieApp
//
//  Created by Nalluri,Srividya on 4/20/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    //Assign movie into the cell, after creating the number of cells dynamically.
    func assignMovies(movie: Movie){
        imageViewOL.image = movie.image
    }
}
