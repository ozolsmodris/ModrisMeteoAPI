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
    
    /// Return temperature
    /// - Parameter completion: completion returns Quote structure
    public func fetchTemperatureForLocation(_ location: String, completion: @escaping (Station?, Error?) -> Void) {
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
              if let error = error {
                print("Error with fetching films: \(error)")
                completion(nil, error)
                return
              }
              
              guard let httpResponse = response as? HTTPURLResponse,
                    (200...299).contains(httpResponse.statusCode) else {
                print("Error with the response, unexpected status code: \(String(describing: response))")
                completion(nil, error)
                return
              }

              if let data = data,
                 let temperatureData = try? JSONDecoder().decode(TemperatureData.self, from: data) {
                completion(temperatureData.stations.first, nil)               
              }
            })
            task.resume()
    }
}


