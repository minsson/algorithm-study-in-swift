//
//  BOJ_2839.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/11/22.
//  https://www.acmicpc.net/problem/2839

import Foundation

func answer_BOJ_2839() {
    var sugarKilogram = Int(readLine()!)!
    var bag = 0

    while sugarKilogram >= 3 {
        if sugarKilogram % 5 == 0 {
            bag += 1
            sugarKilogram -= 5
//            print(bag)
        } else {
            sugarKilogram -= 3
            bag += 1
        }
    }

    if sugarKilogram == 0 {
        print(bag)
    } else {
        print(-1)
    }
}
