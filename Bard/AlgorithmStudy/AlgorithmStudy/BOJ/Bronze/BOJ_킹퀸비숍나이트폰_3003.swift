//
//  BOJ_킹퀸비숍나이트폰_3003.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/11/13.
//  https://www.acmicpc.net/problem/3003

import Foundation

func answer_BOJ_킹퀸비숍나이트폰_3003() {
    let input = readLine()!.components(separatedBy: " ")
    let king = Int(input[0])!
    let queen = Int(input[1])!
    let rook = Int(input[2])!
    let beeshop = Int(input[3])!
    let knight = Int(input[4])!
    let pawn = Int(input[5])!
    
    let problem = [king, queen, rook, beeshop, knight, pawn]
    let answer = [1, 1, 2, 2, 2, 8]
    
    for i in 0...5 {
        print(answer[i] - problem[i], terminator: " ")
    }
}
