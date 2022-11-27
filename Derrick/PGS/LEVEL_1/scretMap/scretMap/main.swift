//
//  main.swift
//  scretMap
//
//  Created by Derrick kim on 2022/11/26.
//

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var result: String = ""

    for number in 0..<arr1.count {
        let firstBinary = Int(String(arr1[number], radix: 2)) ?? 0
        let secondBinary = Int(String(arr2[number], radix: 2)) ?? 0
        let summary = String(firstBinary + secondBinary)

        for word in summary {
            if word == "1" || word == "2" {
                result += "#"
            } else {
                result += " "
            }
        }

        if result.count < n {
            for _ in 0..<n - result.count {
                result = " " + result
            }
        }

        answer.append(result)
        result = ""
    }
    
    return answer
}

print(solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10]))
