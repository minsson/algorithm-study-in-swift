//
//  BOJ_1316.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/12/04.
//  https://www.acmicpc.net/problem/1316

import Foundation

//func answer_BOJ_1316() {
//    let N = Int(readLine()!)!
//    var answer = 0
//
//    for _ in 0..<N {
//        var word = readLine()!
//        var checker: [Character] = []
////        var error = 0
//
//        for char in word {
//            if checker.contains(char) {
//                checker.append(char)
//            } else if checker.last != char {
//                checker.removeAll()
//                break
//            }
//        }
//        if checker.count != 0 {
//            answer += 1
//        }
//        print(answer)
//    }
//}

func answer_BOJ_1316() {
    let N = Int(readLine()!)!
    var count = 0
    
    for _ in 0..<N {
        var word = readLine()!
        var arr: [Character] = []
        var token = false
        
        for i in word {
            if arr.contains(i) {
                arr.append(i)
            } else {
                if arr.last != i {
                    token = true
                }
            }
        }
        if !token {
            count += 1
        }
    }
    print("\(count)")
}
