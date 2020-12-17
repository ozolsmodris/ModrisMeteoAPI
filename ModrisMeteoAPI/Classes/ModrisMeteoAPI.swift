//
//  ModrisMeteoAPI.swift
//  ModrisMeteoAPI
//
//  Created by Modris Ozols on 17/12/2020.
//

import Foundation

public class ModrisMeteoAPI {
    let url = URL(string: "https://www.meteo.lv/meteorologijas-operativie-dati")!
    public init() {}
    
    /// Return all stations
    /// - Parameter completion: completion returns [Station], Error?
    public func fetchAllStation( completionHandler: @escaping (Result<[Station], Error>) -> Void ) {
        
        URLSession.shared.dataTask(with: url, completionHandler: { (data, _, error) in
            if let error = error {
                print("Error with fetching films: \(error)")
                completionHandler(.failure(error))
                return
            }
                
            do {
                guard let data = data else { return }
                let temperatureData = try JSONDecoder().decode(TemperatureData.self, from: data)
                completionHandler(.success(temperatureData.stations))
            } catch let error {
                completionHandler(.failure(error))
            }
            
        }).resume()
    }
}
