//
//  JSONDecoder.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 3/28/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import Foundation

public extension JSONDecoder {
    func decode<T>(_ type: T.Type, from resourceName: String, bundle: Bundle = .main) throws -> T? where T: Decodable {
        guard let url = bundle.url(forResource: resourceName, withExtension: "json") else { return nil }
        let data = try Data(contentsOf: url)
        return try self.decode(T.self, from: data)
    }
}
