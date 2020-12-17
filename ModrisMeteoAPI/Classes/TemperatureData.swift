//
//  TemperatureData.swift
//  ModrisMeteoAPI
//
//  Created by Modris Ozols on 17/12/2020.
//

import Foundation

/// Character:
/// - date
/// - time
/// - stations
public struct TemperatureData: Decodable {
    public let date: String
    public let time: String
    public let stations: [Station]
    
    enum CodingKeys: String, CodingKey {
        case date
        case time
        case stations
    }
}
