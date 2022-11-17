//
//  main.swift
//  2xn_tiling
//
//  Created by Derrick kim on 2022/11/17.
//

import Foundation

let n = readLine().map{ Int($0) }

func solution(_ num: Int) {
    var numberArray = Array(repeating: 0, count: num + 1)

    if (num == 1) {
        print(1)
    } else if (num == 2) {
        print(2)
    } else {
        numberArray[num] = 1
        numberArray[num] = 2
        for i in 3..<num+1 {
            numberArray[i] = (numberArray[i - 1] + numberArray[i - 2]) % 10007
         }

        print(numberArray[num])
    }
}

solution((n ?? 0) ?? 0)
