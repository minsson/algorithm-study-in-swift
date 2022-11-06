//
//  BOJ_TestGrade_9498.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/06.
//

import Foundation

func answer_시험성적_9498() {
    let testCount =  Int(readLine()!)!
    switch testCount {
    case 90...100 : print("A")
    case 80...89 : print("B")
    case 70...79 : print("C")
    case 60...69 : print("D")
    default: print("F")
    }
}
answer_시험성적_9498()
