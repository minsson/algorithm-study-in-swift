//
//  BOJ_2675.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/12/04.
//  https://www.acmicpc.net/problem/2675

import Foundation

func answer_BOJ_2675() {
    let T = Int(readLine()!)!

    for _ in 1...T {
        let array = readLine()!.split(separator: " ")
        let R = Int(array[0]) ?? 0
        let S = array[1]

        for i in S {
            for _ in 1...R {
                print("\(i)", terminator: "")
            }
        }
        print("")
    }
}

//func answer_BOJ_2675_Ryan() {
//    let numberOfInputs = Int(readLine()!)!
//    var inputs: [[String.SubSequence]] = []
//
//    func repeatCharacters(for input: [String.SubSequence]) {
//        let repeatingNumberForInput = Int(input[0])!
//        let splittedByCharacterOfInput = input[1].map { $0 }
//        var repeatedForInput: [Character] = []
//
//        splittedByCharacterOfInput.forEach {
//            for _ in 1...repeatingNumberForInput {
//                repeatedForInput.append($0)
//            }
//        }
//        print(String(repeatedForInput))
//    }
//
//    for _ in 1...numberOfInputs {
//        inputs.append(readLine()!.split(separator: " "))
//    }
//
//    for i in 0..<numberOfInputs {
//        repeatCharacters(for: inputs[i])
//    }
//}
