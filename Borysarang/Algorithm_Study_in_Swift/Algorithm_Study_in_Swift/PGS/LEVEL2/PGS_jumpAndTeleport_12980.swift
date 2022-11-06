//
//  PGS_jumpAndTeleport_12980.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/06.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12980
//

import Foundation

func answer_점프와순간이동_12980() {
    let testInput: [Int] = [5, 6, 5000]
    testInput.forEach { input in
        print(solution_점프와순간이동_980(input))
    }
}

func solution_점프와순간이동_12980(_ n:Int) -> Int
{
    var target = n
    var ans:Int = 0
    while target > 0 {
        if target % 2 == 0 {
            target = target / 2
        } else {
            target = target - 1
            ans += 1
        }
    }
    return ans
}
