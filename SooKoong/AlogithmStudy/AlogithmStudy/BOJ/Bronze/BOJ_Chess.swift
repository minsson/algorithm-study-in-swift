//
//  BOJ_Chess.swift
//  AlogithmStudy-Sookoong
//
//  Created by 수꿍 on 2022/11/08.
//  https://www.acmicpc.net/problem/3003

import Foundation

func answer_BOJ_Chess_3003() {
    let input = readLine()!.components(separatedBy: " ")
    let need = [1, 1, 2, 2, 2, 8]
    var printNeed = ""

    for i in 0..<input.count {
        let chessPiece = Int(input[i])!
        let piece = need[i] - chessPiece
        printNeed += String(piece) + " "
    }

    print(printNeed)
}
