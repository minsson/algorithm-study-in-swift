//
//  answer_BOJ_a+b-5_10952.swift
//  main
//
//  Created by 오경식 on 2022/11/20.
//

import Foundation

func answer_BOJ_A더하기B_10952() {
    var stop = true
    while stop {
        let num = readLine()!
        let arr = num.split(separator: " ")
        let a = Int(arr[0])
        let b = Int(arr[1])
        if a! == 0 && b! == 0 {
            stop = false
            break
        }
        print(a! + b!)
    }
}
