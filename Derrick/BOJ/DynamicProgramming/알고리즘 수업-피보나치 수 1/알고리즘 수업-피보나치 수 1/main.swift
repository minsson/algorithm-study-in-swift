//
//  main.swift
//  알고리즘 수업-피보나치 수 1
//
//  Created by Derrick kim on 2022/11/19.
//

import Foundation

let number = Int(readLine()!)!
var f = Array(repeating: 0, count: number+1)

var fibCount = 0
var fibonacciCount = 0

func fib(_ num: Int) -> Int {

    if (num == 1 || num == 2) {
        fibCount += 1
        return 1
    }
    else {
        return fib(num - 1) + fib(num - 2)
    }
}

func fibonacci(_ num: Int) -> Int {
    f[1] = 1
    f[2] = 1

    for index in 3...num {
        f[index] = f[index - 1] + f[index - 2]
        fibonacciCount += 1
    }

    return f[num]
}

func setupDefault(_ number: Int) {
    fib(number)
    fibonacci(number)
    print(fibCount, fibonacciCount)
}

setupDefault(number)
