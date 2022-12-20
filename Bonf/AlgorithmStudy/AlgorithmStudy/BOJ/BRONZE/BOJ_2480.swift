//
//  BOJ_2480.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/12/18.
//

import Foundation

func answer_BOJ_주사위세개_2480() {
    let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }
    var count = 0
    var index = 0
    if nums[0] == nums[1] { count += 1 }
    if nums[0] == nums[2] { count += 1 }
    if nums[1] == nums[2] {
        count += 1
        index = 1
    }
    var result = 0
    if count == 3 {
        result = 10000 + nums[0] * 1000
    }
    
    if count == 1 {
        result = 1000 + nums[index] * 100
    }
    
    if count == 0 {
        result = nums.max()! * 100
    }
    
    print(result)
}
