//
//  main.swift
//  ongrliProblem
//
//  Created by Derrick kim on 2022/11/10.
//

import Foundation

//
func solution(_ babbling:[String]) -> Int {
    let words = ["aya", "ye", "woo", "ma"]
    return check(words, and: babbling)
}

func check(_ a: [String], and b: [String]) -> Int {
    var count = 0
    for num in 0..<b.count {
        var array = ""
        for num2 in 0..<a.count {
            if b[num].contains(a[num2]) {
                array += a[num2]
            }
        }

        if array.count == b[num].count {
            count += 1
        }
    }

    return count
}

print(solution(["ayaye", "uuuma", "ye", "yemawoo", "ayaa"]))

