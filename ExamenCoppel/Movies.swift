//
//  Movies.swift
//  ExamenCoppel
//
//  Created by Rodrigo Arango on 05/01/23.
//

import Foundation

struct Movies: Decodable {
    let results: [results]
}

struct results: Decodable, Identifiable{
    let adult: Bool?
    let backdrop_path: String?
    let genre_ids: [Int]?
    let id: Int?
    let original_language: String?
    let original_title: String?
    let overview: String?
    let popularity: Int?
    let poster_path:String?
    let release_date:String?
    let title: String?
    let video: Bool?
    let vote_average: Double?
    let vote_count: Int?
}
