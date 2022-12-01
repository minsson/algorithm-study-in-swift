//
//  BOJ_Max.swift
//  AlogithmStudy-Sookoong
//
//  Created by 수꿍 on 2022/11/25.
//  https://www.acmicpc.net/problem/2562

import Foundation

func answer_BOJ_Max_2562() {
    var array: [Int] = []

    for _ in 0..<9 {
        let readLine = readLine()
        array.append(Int(readLine!)!)
    }

    let array2 = array.sorted { $0 > $1 }
    print(array2[0])

    let answer = array.firstIndex(of: array2[0])! + 1
    print(answer)
}
