//
//  main.swift
//  Cache
//
//  Created by Derrick kim on 2022/11/28.
//

import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {

    let lowercasedCities = cities.map{ $0.lowercased() }

    var cacheArray = Array(repeating: "0", count: cacheSize)

    var timer = 0

    if cacheSize != 0 {
        for city in lowercasedCities {
            if cacheArray.contains(city) {
                timer += 1
                cacheArray.remove(at: cacheArray.firstIndex(of: city)!)
                cacheArray.append(city)
            } else {
                timer += 5
                cacheArray.append(city)
                if cacheArray.count > cacheSize {
                    cacheArray.removeFirst()
                }
            }
        }
    } else {
        return cities.count * 5
    }

    return timer
}

print(solution(3, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "Jeju", "Pangyo", "Seoul", "NewYork", "LA"]    ))
