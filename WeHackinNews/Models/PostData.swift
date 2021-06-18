//
//  PostData.swift
//  WeHackinNews
//
//  Created by Ashish Kheveria on 19/03/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}

