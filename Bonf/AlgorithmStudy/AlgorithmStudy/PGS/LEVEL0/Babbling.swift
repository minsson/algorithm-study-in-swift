//
//  Babbling.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/11/02.
//

import Foundation

func solution(_ babbling:[String]) -> Int {
    let speakableWord = ["aya", "ye", "woo", "ma"]
    let stringWord = babbling.joined(separator: "")
    var count = 0
    guard babbling.count >= 1 && babbling.count <= 15 else { return 0 }
    guard stringWord.count >= 1 && stringWord.count <= 100 else { return 0 }
    
    for babble in babbling {
        guard Int(babble) == nil,
              babble.lowercased() == babble else { continue }
        var a = babble
        for i in 0..<speakableWord.count {
            if a.contains(speakableWord[i]) {
                a = a.replacingOccurrences(of: speakableWord[i], with: "\(i)")
                if Int(a) != nil {
                    let arrayA = Array(a)
                    let setA = Set(a)
                    if arrayA.count != Array(setA).count {
                        a = speakableWord[i]
                    }
                }
            }
        }
        if Int(a) != nil {
            count += 1
        }
    }
    
    return count
}
