//
//  answer_BOJ_2562.swift
//  main
//
//  Created by 오경식 on 2022/12/02.
//

import Foundation

func answer_BOJ_2562() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let c = Int(readLine()!)!
    let d = Int(readLine()!)!
    let e = Int(readLine()!)!
    let f = Int(readLine()!)!
    let g = Int(readLine()!)!
    let h = Int(readLine()!)!
    let i = Int(readLine()!)!
    var array2: [Int] = [a, b, c, d, e, f, g, h, i]
    var count = 0

    print(array2.max()!)
    for i in array2 {
        count += 1
        if i == array2.max() {
            print(count)
        }
    }
}
