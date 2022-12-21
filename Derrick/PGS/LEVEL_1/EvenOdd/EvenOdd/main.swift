//
//  main.swift
//  EvenOdd
//
//  Created by Derrick kim on 2022/12/21.
//

import Foundation

func solution(_ num:Int) -> String {
    return num % 2 == 0 ? "Even" : "Odd"
}

print(solution(3))
