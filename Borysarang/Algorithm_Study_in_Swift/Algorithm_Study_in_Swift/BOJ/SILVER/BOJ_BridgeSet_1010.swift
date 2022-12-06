//
//  BOJ_다리놓기_1010
//  Alogrithm_Study_in_Swift
//
//  Created by Borysarang on 2022/09/21.
//  https://www.acmicpc.net/problem/1010

import Foundation

var factorialTable: [Double] = [Double](repeating: 0, count: 31)

func answer_BOJ_다리놓기_1010() {
    factorialTable[0] = 1
    factorialTable[1] = 1
    let testCount =  Int(readLine()!)
    var result: [Int] = []
    for _ in 0..<testCount! {
        result.append(Int(combi()))
    }
    result.forEach { value in
        print(value)
    }
}

func combi() -> Double {
    let NM = readLine()?.split(separator: " ")
    let N = Double(NM![0])!
    let M = Double(NM![1])!
    let factorialM = factorial(M)
    let factorialN = factorial(N)
    let factorialMminusN = factorial(M-N)
    return round(factorialM / (factorialMminusN * factorialN))
}

func factorial(_ input: Double) -> Double {
    if input == 1 {
        return 1
    }
    if factorialTable[Int(input)] != 0 {
        return factorialTable[Int(input)]
    }
    else {
        factorialTable[Int(input)] = factorial(input-1) * input
        return factorialTable[Int(input)]
    }
}

