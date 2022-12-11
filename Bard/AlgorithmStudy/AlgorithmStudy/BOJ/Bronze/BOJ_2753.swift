//
//  BOJ_2753.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/12/11.
//  https://www.acmicpc.net/problem/2753

import Foundation

func answer_BOJ_2753() {
    let input = Int(readLine()!)!
    
    if input % 4 == 0, input % 100 != 0 {
        print(1)
    } else if input % 4 == 0, input % 400 == 0 {
        print(1)
    } else {
        print(0)
    }
}
