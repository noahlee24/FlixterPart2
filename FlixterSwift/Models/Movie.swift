//
//  Movie.swift
//  FlixterSwift
//
//  Created by Kobe Petrus on 3/13/23.
//

import Foundation
import UIKit

struct MoviesResponse: Decodable{
    var page: Int
    var results: [Movie]
    var total_pages: Int
    var total_results: Int
}

struct Dates: Decodable{
    var maximum: String
    var minimum: String
}

struct Movie: Decodable{
    var adult: Bool
    var backdrop_path: String
    var genre_ids: [Int]
    var id: Int
    var original_language: String
    var original_title: String
    var overview: String
    var popularity: Float
    var poster_path: String
    var release_date: String
    var title: String
    var video: Bool
    var vote_average: Float
    var vote_count: Int
}
