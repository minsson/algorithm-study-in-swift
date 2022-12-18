//
//  BOJ_1526.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://www.acmicpc.net/problem/1526

import Foundation

func answer_BOJ_가장_큰_금민수_1526() {
    let input = readLine()!

    for number in stride(from: Int(input)!, through: 4, by: -1) {
        if (String(number).allSatisfy {
            ($0 == "4") || ($0 == "7")
        }) {
            print(number)
            break
        }
    }
}
