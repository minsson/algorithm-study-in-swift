//
//  main.swift
//  newsClustering
//
//  Created by Derrick kim on 2022/11/28.
//

import Foundation

func createLetters(_ str: String) -> [String] {
    let stringArray = str.map{ $0 }
    var result: [String] = []

    for index in 0..<str.count - 1 {
        let first = stringArray[index]
        let second = stringArray[index + 1]
        if first.isLetter && second.isLetter {
            result.append(String(first)+String(second))
        }
    }

    return result
}

func solution(_ str1:String, _ str2:String) -> Int {

    let firstWord = str1
        .lowercased()

    let secondWord = str2
        .lowercased()

    let firstLetters = createLetters(firstWord)
    var secondLetters = createLetters(secondWord)

    var total = firstLetters.count + secondLetters.count
    var count = 0

    for firstLetterIndex in firstLetters.indices {
        for secondLetterIndex in secondLetters.indices {
            if firstLetters[firstLetterIndex] == secondLetters[secondLetterIndex] {
                count += 1
                secondLetters.remove(at: secondLetterIndex)
                break
            }
        }
    }

    total -= count

    if total == 0 {
        return 65536
    }
    else {
        return Int(Double(count) / Double(total) * 65536)
    }
}

print(solution("handshake", "shake hands"))
// 교집합 / 합집합
// 교집합 / 합집합  == 0 -> 1
// 다중집합 [1,1,1] / [1,1,1,1,1]
// 교집합 min(3,5) , 합집합 max(3,5)
