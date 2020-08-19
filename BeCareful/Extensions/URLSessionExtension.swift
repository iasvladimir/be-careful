//
//  URLSessionExtension.swift
//  BeCareful
//
//  Created by Israel Filadelfo Calderon Chavez on 21/03/20.
//  Copyright © 2020 Israel Filadelfo Calderon Chavez. All rights reserved.
//

import Foundation

extension URLSession {

    func dataTask(with url: URL, result: @escaping (Result<(URLResponse, Data), Error>) -> Void) -> URLSessionDataTask {
        return dataTask(with: url) { (data, response, error) in
            if let error = error {
                result(.failure(error))
                return
            }
            guard let response = response,
                let data = data else {
                    let error = NSError(domain: "error", code: 0, userInfo: nil)
                    result(.failure(error))
                    return
            }
            result(.success((response, data)))
        }
    }

    func dataTask(with request: URLRequest, result: @escaping (Result<(URLResponse, Data), Error>) -> Void) -> URLSessionDataTask {
        return dataTask(with: request) { (data, response, error) in
            if let error = error {
                result(.failure(error))
                return
            }
            guard let response = response,
                let data = data else {
                    let error = NSError(domain: "error", code: 0, userInfo: nil)
                    result(.failure(error))
                    return
            }
            result(.success((response, data)))
        }
    }

}
