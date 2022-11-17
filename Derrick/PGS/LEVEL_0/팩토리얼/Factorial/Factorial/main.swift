//
//  main.swift
//  Factorial
//
//  Created by Derrick kim on 2022/11/09.
//

import Foundation

func solution(_ n:Int) -> Int {
    var value = 0

    for number in 1...10 {
        if n >= makeFactorial(number) {
            value = number
            continue
        } else {
            break
        }
    }

    return value
}

func makeFactorial(_ number: Int) -> Int {
    if number > 1 {
        return number * makeFactorial(number - 1)
    }
    return number
}
