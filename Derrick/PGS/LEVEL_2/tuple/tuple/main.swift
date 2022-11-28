//
//  main.swift
//  tuple
//
//  Created by Derrick kim on 2022/11/28.
//

import Foundation

func solution(_ s:String) -> [Int] {
    var answer: [Int: Int] = [:]

    let numbers = s.split(separator: ",").map{ String($0).replacingOccurrences(of: "{", with: "").replacingOccurrences(of: "}", with: "") }.map{ Int($0)! }


    for number in numbers {
        if answer[number] != nil {
            answer[number]! += 1
        } else {
            answer.updateValue(1, forKey: number)
        }
    }


    let result = answer.sorted(by: { $0.value > $1.value }).map{ $0.key }

    return result
}

print(solution("{{2},{2,1},{2,1,3},{2,1,3,4}}"))
