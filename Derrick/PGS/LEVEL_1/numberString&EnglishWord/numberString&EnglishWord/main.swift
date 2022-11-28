//
//  main.swift
//  numberString&EnglishWord
//
//  Created by Derrick kim on 2022/11/28.
//

import Foundation

func solution(_ s:String) -> Int {
    let originWord: [String: Int] = ["zero": 0,
                                     "one": 1,
                                     "two": 2,
                                     "three": 3,
                                     "four": 4,
                                     "five": 5,
                                     "six": 6,
                                     "seven": 7,
                                     "eight": 8,
                                     "nine": 9]
    var answer: [Int] = []

    var stack = ""
    for word in s {
        if word.isNumber {
            answer.append(Int(String(word))!)
        } else {
            stack += String(word)

            if let number = originWord[stack] {
                answer.append(number)
                stack = ""
            }
        }
    }


    let result = answer.map{ String($0) }.reduce("", {
        $0 + $1
    })

    return Int(result)!
}

print(solution("one4seveneight"))
