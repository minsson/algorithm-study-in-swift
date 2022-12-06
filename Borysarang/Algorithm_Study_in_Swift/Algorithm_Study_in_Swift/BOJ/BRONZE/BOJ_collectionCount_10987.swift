//
//  BOJ_collectionCount_10987.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/19.
//  https://www.acmicpc.net/problem/10987
//

import Foundation

func answer_모음의개수_10987() {
    let input = readLine()!
    print(problem_10987(input: input))
    
}

func problem_10987(input: String) -> Int {
    var count = 0
    let collection = ["a","e","i","o","u"]
    input.forEach { Character in
        if collection.contains(Character.lowercased()) {
            count += 1
        }
    }
    return count
}
