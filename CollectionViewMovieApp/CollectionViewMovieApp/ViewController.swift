//
//  ViewController.swift
//  CollectionViewMovieApp
//
//  Created by Nalluri,Srividya on 4/20/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //create a cell
        let cell = collectionViewOL.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        // populate the cell
        cell.assignMovies(movie: movies[indexPath.row])
        
        // return a cell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleOL.text = "Title: \(movies[indexPath.row].title)"
        yearReleasedOL.text = "Year Released: \(movies[indexPath.row].releasedYear)"
        ratingOL.text = "Rating: \(movies[indexPath.row].movieRating)"
        boxOfficeOL.text = "Box Ofiice: \(movies[indexPath.row].boxOffice)"
    }
    

    @IBOutlet weak var titleOL: UILabel!
    
    @IBOutlet weak var yearReleasedOL: UILabel!
    
    @IBOutlet weak var ratingOL: UILabel!
    
    @IBOutlet weak var boxOfficeOL: UILabel!
    
    @IBOutlet weak var collectionViewOL: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionViewOL.delegate = self
        collectionViewOL.dataSource = self
        
        
    }


}

