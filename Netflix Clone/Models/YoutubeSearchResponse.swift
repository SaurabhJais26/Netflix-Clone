//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by AcxGautamM2Pro on 14/05/24.
//

import Foundation

//items": [
//    {
//      "kind": "youtube#searchResult",
//      "etag": "HGqonDP0-zmQU_Wi-fkti6oG398",
//      "id": {
//        "kind": "youtube#video",
//        "videoId": "kPGS2TOIT5Y"
//      }
//    }

struct YoutubeSearchResponse: Codable {
    let items: [YoutubeSearchItem]
}

struct YoutubeSearchItem: Codable {
    let id: YoutubeVideoId
}

struct YoutubeVideoId: Codable {
    let kind: String
    let videoId: String
}
