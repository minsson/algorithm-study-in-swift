//
//  BOJ_9498.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/11/13.
//

import Foundation

func answer_BOJ_시험성적_9498() {
    let input = Int(readLine()!)!
    
    if input >= 90 {
        print("A")
    } else if input >= 80 {
        print("B")
    } else if input >= 70 {
        print("C")
    } else if input >= 60 {
        print("D")
    } else {
        print("F")
    }
}
