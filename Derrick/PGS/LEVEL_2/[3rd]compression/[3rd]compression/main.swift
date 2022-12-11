//
//  main.swift
//  [3rd]compression
//
//  Created by Derrick kim on 2022/11/29.
//

import Foundation

func solution(_ msg:String) -> [Int] {
    guard msg.count >= 1, msg.count <= 1000 else {
        return []
    }

    var result: [Int] = []
    let msgArray = msg.map{ String($0) }

    var allWords: [String: Int] = createAlphabets()

    var previousWord = ""
    var count = 0

    while count < msgArray.count {
        let nextWord = msgArray[count]

        let currentWord = previousWord + nextWord
        let isEmptyWord = allWords.contains { $0.key == currentWord }

        if !isEmptyWord {
            result.append(allWords[previousWord]!)

            allWords.updateValue(allWords.count + 1, forKey: currentWord)

            previousWord = ""
        }

        previousWord += nextWord
        count += 1
    }

    result.append(allWords[previousWord]!)

    return result
}

func createAlphabets() -> [String: Int] {
    var allAlphabet: [String: Int] = [:]
    let startAlphbet = Unicode.Scalar("A").value
    let endAlphbet = Unicode.Scalar("Z").value
    var point = 1

    for number in startAlphbet...endAlphbet {
        if let alphabet = Unicode.Scalar(number) {
            allAlphabet.updateValue(point, forKey: String(alphabet))
            point += 1
        }
    }

    return allAlphabet
}

print(solution("KAKAO"))
