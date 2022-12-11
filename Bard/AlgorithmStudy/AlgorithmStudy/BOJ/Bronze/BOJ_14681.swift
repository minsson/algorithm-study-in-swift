//
//  BOJ_14681.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/12/11.
//  https://www.acmicpc.net/problem/14681

import Foundation

func answer_BOJ_14681() {
    let firstInput = Int(readLine()!)!
    let secondInput = Int(readLine()!)!
   
    if firstInput > 0, secondInput > 0 {
        print(1)
    } else if firstInput < 0, secondInput > 0 {
        print(2)
    } else if firstInput < 0, secondInput < 0 {
        print(3)
    } else {
        print(4)
    }
}
