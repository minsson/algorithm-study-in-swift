//
//  BcterialGrowth.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/12/25.
//

import Foundation

func growBcterial(_ n:Int, _ t:Int) -> Int {
    var result = n
    for _ in 0..<t {
        result *= 2
    }
    return result
}
