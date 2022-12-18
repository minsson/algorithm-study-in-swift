//
//  BOJ_1284.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/12/18.
//

import Foundation

func answer_BOJ_집주소_1284() {
    while true {
        let num = readLine()!
        
        var sum = 2 // 양 옆 여백
        
        sum += (num.count - 1) // 공백 여백
        
        sum += (num.count * 3) // 기본 수
        
        let zero = num.filter{ $0 == "0" }
        let one = num.filter{ $0 == "1" }
        sum += (zero.count)
        sum -= (one.count)
        
        if num == "0" {
            break
        }
        
        print(sum)
    }
}
