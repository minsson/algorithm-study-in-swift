//
//  BOJ_모음의_개수_1264.swift
//  AlgorithmStudy-Seohyeon2
//
//  Created by seohyeon park on 2022/10/25.
//  https://www.acmicpc.net/problem/1264

import Foundation

func answer_BOJ_모음의_개수_1264() {
    let vowels = ["a","e","i","o","u"]
    
    while true {
        let input = readLine()!
        var count = 0
        
        if input == "#" {
            break
        }
        
        let convertLower = input.lowercased()
        convertLower.forEach {
            if vowels.contains(String($0)) {
                count += 1
            }
        }
        
        print(count)
    }
}
