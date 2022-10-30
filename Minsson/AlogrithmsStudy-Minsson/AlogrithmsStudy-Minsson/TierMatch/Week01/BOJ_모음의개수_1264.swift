//
//  BOJ_모음의개수_1264.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/10/28.
//  https://www.acmicpc.net/problem/1264

import Foundation

func answer_BOJ_모음의개수_1264() {
    
    let moeums = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var finished = false

    while !finished {
        var count = 0
        let input = readLine()!

        if input == "#" {
            finished.toggle()
            break
        }
        
        for char in input {
            if moeums.contains(String(char)) {
                count += 1
            }
        }
        
        print(count)
    }
}
