//
//  MovieTableViewCell.swift
//  FlixterSwift
//
//  Created by Kobe Petrus on 3/13/23.
//

import UIKit
import Nuke

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    var imageBaseURL = "https://image.tmdb.org/t/p/w500"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        titleLabel.text = movie.title
        overviewLabel.text = movie.overview
        let posterViewURL = URL(string: self.imageBaseURL+movie.poster_path)
        Nuke.loadImage(with: posterViewURL!, into: posterView)

        // Load image async via Nuke library image loading helper method
    }

}
