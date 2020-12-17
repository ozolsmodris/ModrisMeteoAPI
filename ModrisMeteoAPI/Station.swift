//
//  Stations.swift
//  ModrisMeteoAPI
//
//  Created by Modris Ozols on 17/12/2020.
//

import Foundation

/// Character:
/// - id
/// - name
/// - latitude
/// - longitude
/// - temperature
public struct Station: Decodable {
    public let id: String
    public let name: String
    public let latitude: Float
    public let longitude: Float
    public let temperature: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case latitude
        case longitude
        case temperature
    }
}
