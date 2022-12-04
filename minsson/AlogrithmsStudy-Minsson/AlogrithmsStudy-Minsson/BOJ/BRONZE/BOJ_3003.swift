//
//  BOJ_3003.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/12/04.
//  https://www.acmicpc.net/problem/3003

import Foundation

func answer_BOJ_킹퀸룩비숍나이트폰_3003() {
    let fullPieces = [1, 1, 2, 2, 2, 8]
    let input = readLine()!.components(separatedBy: " ")
    
    for i in 0..<fullPieces.count {
        print(fullPieces[i] - Int(input[i])!, terminator: " ")
    }
}
