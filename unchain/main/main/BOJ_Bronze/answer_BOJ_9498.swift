//
//  answer_BOJ_시험성적_9498.swift
//  AlgorithmStudy-unchain
//
//  Created by 오경식 on 2022/11/02.
//  https://www.acmicpc.net/problem/9498

import Foundation

func answer_BOJ_시험성적_9498() {
    let line = readLine()!

    if Int(line)! >= 90, Int(line)! <= 100 {
        print("A")
    } else if Int(line)! >= 80, Int(line)! <= 89 {
        print("B")
    } else if Int(line)! >= 70, Int(line)! <= 79 {
        print("C")
    } else if Int(line)! >= 60, Int(line)! <= 69 {
        print("D")
    } else {
        print("F")
    }
}
