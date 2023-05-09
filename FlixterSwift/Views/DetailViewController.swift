//
//  DetailViewController.swift
//  FlixterSwift
//
//  Created by Kobe Petrus on 3/13/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var votesLabel: UILabel!
    @IBOutlet weak var voteAverageLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var popularityLabel: UILabel!
    var imageBaseURL = "https://image.tmdb.org/t/p/w500"
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()
        let backdropViewURL = URL(string: self.imageBaseURL+movie.backdrop_path)
        let votesAverageString = "Votes Average: "+String(movie.vote_average)
        let votesString = "Votes: "+String(movie.vote_count)
        let popularityString = "Popularity: "+String(movie.popularity)
        Nuke.loadImage(with: backdropViewURL!, into: backdropView)
        
        
        titleLabel.text = movie.title
        overviewLabel.text = movie.overview
        votesLabel.text = votesString
        voteAverageLabel.text = votesAverageString
        popularityLabel.text = popularityString
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
