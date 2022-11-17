//
//  main.swift
//  2xn tiling2
//
//  Created by Derrick kim on 2022/11/17.
//

import Foundation

let number = Int(readLine()!)!

func solution(_ num: Int) -> Int {
    var numberArray = Array(repeating: 0, count: 1000)
    if (num == 1) {
        print(1)
    } else if (num == 2) {
        print(3)
    } else if numberArray[num] != 0 {
        print(numberArray[num])
    } else {
        numberArray[1] = 1
        numberArray[2] = 3

        for index in 3..<numberArray.count {
            numberArray[index] = (numberArray[index-1] + (2*numberArray[index-2])) % 10007
        }

        print(numberArray[num])
    }

    return 0
}

solution(number)
