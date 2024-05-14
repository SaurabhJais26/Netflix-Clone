//
//  Movie.swift
//  Netflix Clone
//
//  Created by SaurabhJaiswal on 10/05/24.
//

import Foundation

struct TrendingTitleResponse: Codable {
    let results: [Title]
}

struct Title: Codable {
    let id : Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}

/*
 {
adult = 0;
"backdrop_path" = "/ySgY4jBvZ6qchrxKnBg4M8tZp8V.jpg";
"genre_ids" =             (
 27,
 53,
 35
);
id = 1111873;
"media_type" = movie;
"original_language" = en;
"original_title" = Abigail;
overview = "After a group of would-be criminals kidnap the 12 year old ballerina daughter of a powerful underworld figure, all they have to do to collect a $50 million ransom is watch the girl overnight. In an isolated mansion, the captors start to dwindle, one by one, and they discover, to their mounting horror, that they\U2019re locked inside with no normal little girl.";
popularity = "829.879";
"poster_path" = "/5Uq8P6MPj9Ppsns5t82AiCiUaWE.jpg";
"release_date" = "2024-04-18";
title = Abigail;
video = 0;
"vote_average" = "7.209";
"vote_count" = 199;
}
 */
