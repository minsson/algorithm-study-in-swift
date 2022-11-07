//
//  BOJ_1264.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/11/02.
//

import Foundation

func answer_BOJ_모음의개수_1264() {
    let moem = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    while true {
        var answer = 0
        let input = readLine() ?? ""
        if input == "#" || input.count > 255 { break }
        input.forEach { char in
            if moem.contains(String(char)) {
                answer += 1
            }
        }
        print(answer)
    }
}
