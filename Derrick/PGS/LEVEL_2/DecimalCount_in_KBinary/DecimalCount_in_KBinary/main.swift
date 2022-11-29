//
//  main.swift
//  DecimalCount_in_KBinary
//
//  Created by Derrick kim on 2022/11/29.
//

import Foundation

func solution(_ n:Int, _ k:Int) -> Int {

    let totalNumber = String(n, radix: k).split(separator: "0")

    var count = 0

    for number in totalNumber {
        if isPrime(num: Int(number)!) {
            count += 1
        }
    }

    return count
}

func isPrime(num: Int) -> Bool {
    if (num < 4) {
        return num == 1 ? false : true
    }

    for i in 2...Int(sqrt(Double(num))) {
        if (num % i == 0) { return false }
    }

    return true
}

print(solution(110011, 10))
