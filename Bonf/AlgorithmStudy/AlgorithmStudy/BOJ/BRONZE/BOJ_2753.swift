//
//  BOJ_2753.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/11/13.
//

import Foundation

func answer_BOJ_윤년_2753() {
    let input = Int(readLine()!)!
//    guard input > 0,
//          input <= 4000 else { return }
    if input % 4 == 0 {
        if input % 100 != 0 || input % 400 == 0 {
            print("1")
        } else {
            print("0")
        }
    } else {
        print("0")
    }
}
