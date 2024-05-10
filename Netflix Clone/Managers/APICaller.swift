//
//  APICaller.swift
//  Netflix Clone
//
//  Created by AcxGautamM2Pro on 10/05/24.
//

import Foundation

struct Constants {
    static let API_KEY = "8790d8eeb616664e27d59a6be40b86e6"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedTogetData
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else{return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
