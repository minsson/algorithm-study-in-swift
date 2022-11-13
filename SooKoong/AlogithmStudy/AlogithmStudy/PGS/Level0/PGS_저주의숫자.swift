//
//  PGS_저주의숫자.swift
//  AlogithmStudy-Sookoong
//
//  Created by 수꿍 on 2022/11/09.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120871

import Foundation

func answer_PGS_저주의숫자_120871(_ n:Int) -> Int {
    var answer = n
    var array: [Int] = []
    var i = 0

    while array.count <= 100 {
        i += 1
        let one = i % 10
        let ten = (i % 100) / 10

        if i % 3 == 0 || one == 3 || ten == 3 {

            if answer >= i {
                answer += 1
            }
        } else {
            array.append(i)
        }
    }

    return answer
}
