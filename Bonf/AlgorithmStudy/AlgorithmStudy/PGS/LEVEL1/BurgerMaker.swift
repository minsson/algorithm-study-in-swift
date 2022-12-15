//
//  BurgerMaker.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/12/11.
//

import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var count = 0
    var order: [Int] = []
    
    for i in ingredient {
        order.append(i)
        
        guard order.count > 3 else { continue }
        
        if order[order.count-4..<order.count] == [1, 2, 3, 1] {
            order = Array(order[0..<order.count - 4])
            count += 1
        }
    }
    
    return count
}

