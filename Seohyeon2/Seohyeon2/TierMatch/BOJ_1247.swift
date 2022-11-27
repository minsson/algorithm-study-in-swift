//
//  BOJ_1247.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/10/25.
//
//  https://www.acmicpc.net/problem/1247

import Foundation

func answer_BOJ_부호_1247() {
    var result = [String]()

    func makeTestSet() -> [Int] {
        let n = Int(readLine()!)!
        var testSet = [Int]()
        
        for _ in (1...n) {
            testSet.append(Int(readLine()!)!)
        }

        return testSet
    }

    func calculateSum(testCase: [Int]) {
        if testCase.count == 1 {
            if testCase[0] > 0 {
                result.append("+")
            } else if testCase[0] < 0 {
                result.append("-")
            } else {
                result.append("0")
            }
       
            return
        }
        
        var negativeNumbers = testCase.filter {
            $0 < 0
        }
        
        var positiveNumbers = testCase.filter {
            $0 > 0
        }
        
        let zero = testCase.filter {
            $0 == 0
        }
        
        var sum = [Int]()
        
        if !positiveNumbers.isEmpty &&
            negativeNumbers.isEmpty {
            result.append("+")
            return
        }
        
        if !negativeNumbers.isEmpty &&
            positiveNumbers.isEmpty {
            result.append("-")
            return
        }
        
        if !zero.isEmpty &&
            negativeNumbers.isEmpty &&
            positiveNumbers.isEmpty {
            result.append("0")
            return
        }
        
        if negativeNumbers.count > positiveNumbers.count {
            let count = negativeNumbers.count - positiveNumbers.count
            for _ in (1...count) {
                positiveNumbers.append(0)
            }
        } else if negativeNumbers.count < positiveNumbers.count {
            let count = positiveNumbers.count - negativeNumbers.count
            for _ in (1...count) {
                negativeNumbers.append(0)
            }
        }
        
        for index in (0..<positiveNumbers.count) {
            sum.append(positiveNumbers[index] + negativeNumbers[index])
        }

        calculateSum(testCase: sum)
    }

    for _ in (1...3) {
        calculateSum(testCase: makeTestSet())
    }

    result.forEach {
        print($0)
    }
}
