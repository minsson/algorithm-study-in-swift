//
//  main.swift
//  CourierDeliveryAndCollection
//
//  Created by Derrick kim on 2023/01/06.
//

import Foundation

func solution(_ cap:Int, _ houseCount:Int, _ deliveries:[Int], _ pickups:[Int]) -> Int64 {
    if houseCount != deliveries.count || houseCount != pickups.count {
        return 0
    }
        
    var answer = 0
    var deliver = 0
    var pickup = 0

    var distanceByIndex = deliveries.count - 1

    for index in stride(from: houseCount - 1, to: -1, by: -1) {
        deliver += deliveries[index]
        pickup += pickups[index]

        while deliver > cap || pickup > cap {
            deliver -= cap
            pickup -= cap
            answer += 2 * (distanceByIndex + 1)
            distanceByIndex = index
        }
    }

    if (deliver > 0 || pickup > 0) {
        answer += 2 * (distanceByIndex + 1)
    }

    return Int64(answer)
}

//print(solution(4, 5, [1, 0, 3, 1, 2], [0, 3, 0, 4, 0]))
print(solution(1, 3, [1, 0, 0], [0, 0, 0]))
//print(solution(2, 7, [1, 0, 2, 0, 1, 0, 2], [0, 2, 0, 1, 0, 2, 0]))
