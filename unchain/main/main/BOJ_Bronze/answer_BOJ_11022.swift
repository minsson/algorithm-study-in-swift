//
//  answer_BOJ_11022.swift
//  main
//
//  Created by 오경식 on 2022/11/26.
//

import Foundation

func answer_BOJ_11022() {
    let num = Int(readLine()!)

    for i in 1...num! {
        let readline = readLine()!
        let arr = readline.split(separator: " ")
        let a = Int(arr[0])
        let b = Int(arr[1])
        print("Case #\(i): \(a!) + \(b!) = \(a! + b!)")
    }
}
