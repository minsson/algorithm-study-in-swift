//
//  JegopNumber.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/11/27.
//

import Foundation

func jegopNumber(_ n:Int) -> Int {
    let a = sqrt(Double(n))
    
    let b = Int(sqrt(Double(n)))
    
    if a > Double(b) {
        return 2
    } else {
        return 1
    }
}
