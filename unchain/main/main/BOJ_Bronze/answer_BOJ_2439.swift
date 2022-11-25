//
//  answer_BOJ_별찍기-2_2439.swift
//  main
//
//  Created by 오경식 on 2022/11/20.
//

import Foundation

func answer_BOJ_별찍기2_2439() {
    let num = Int(readLine()!)!
    var star = "*"
    var space = " "
    for i in 1...num {
        for _ in 0 ..< (num - i) {
            print(space, terminator: "")
        }
        for _ in 0 ..< i {
            print(star, terminator: "")
        }
        print()
    }
}
