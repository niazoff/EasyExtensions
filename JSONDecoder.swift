//
//  JSONDecoder.swift
//  Sammys
//
//  Created by Natanel Niazoff on 3/28/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import Foundation

enum FixtureError: Error {
    case fileNotFound
}

extension JSONDecoder {
    private struct Constants {
        static let json = "json"
    }
    
    func decodeFixture<T>(name: String, bundle: Bundle = .main) throws -> T where T: Decodable {
        guard let url = bundle.url(forResource: name, withExtension: Constants.json) else {
            throw FixtureError.fileNotFound
        }
        
        let data = try Data(contentsOf: url)
        return try decode(T.self, from: data)
    }
}
