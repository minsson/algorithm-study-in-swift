//
//  answer_BOJ_사분면고르기_14681.swift
//  AlgorithmStudy-unchain
//
//  Created by 오경식 on 2022/11/02.
//  https://www.acmicpc.net/problem/14681

import Foundation

func answer_BOJ_사분면고르기_14681() {
    let line = readLine()!
    let line2 = readLine()!
    let intLine = Int(line)!
    let intLine2 = Int(line2)!

    if intLine > 0 && intLine2 > 0 {
        print("1")
    } else if intLine < 0 && intLine2 > 0 {
        print("2")
    } else if intLine < 0 && intLine2 < 0 {
        print("3")
    } else if intLine > 0 && intLine2 < 0 {
        print("4")
    }
}
