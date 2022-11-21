//
//  main.swift
//  옹알이(2)
//
//  Created by Derrick kim on 2022/11/18.
//

import Foundation

func solution(_ babbling:[String]) -> Int {
    var count = 0
    for bablingWord in babbling {
        var stack = ""
        var previousWord = ""

        for char in bablingWord {
            stack += String(char)
            if previousWord != stack
                && (stack == "aya"
                    || stack == "ye"
                    || stack == "woo"
                    || stack == "ma") {
                previousWord = stack
                stack = ""
            }
        }
        if stack.count == 0 {
            count += 1
        }
    }

    return count
}


print(solution(["ayaye", "uuu", "yeye", "yemawoo", "ayaayaa"]))
