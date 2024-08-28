//
//  JokesData.swift
//  JokesAppSwiftUI
//
//  Created by Furkan buğra karcı on 14.08.2024.
//

import Foundation

struct Welcome: Codable,Identifiable {
    let id=UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Codable,Identifiable {
    let id: Int
    let joke: String
    let categories: [String]
}


