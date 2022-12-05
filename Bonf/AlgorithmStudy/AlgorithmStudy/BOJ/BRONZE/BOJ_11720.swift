//
//  BOJ_11720.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/12/04.
//

import Foundation

func answer_BOJ_숫자의합_11720() {
    let T = Int(readLine()!)!
    let num = readLine()!
    var result = 0
    num.forEach { char in
        result += Int(String(char))!
    }
    print(result)
}
