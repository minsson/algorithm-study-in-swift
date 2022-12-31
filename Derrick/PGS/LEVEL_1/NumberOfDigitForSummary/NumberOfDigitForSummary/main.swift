//
//  main.swift
//  NumberOfDigitForSummary
//
//  Created by Derrick kim on 2022/12/21.
//
import Foundation

func solution(_ n:Int) -> Int {
    let numbers = String(n).map{ Int(String($0))! }.reduce(0) { partialResult, value in
        return partialResult + value
    }
    return numbers
}

print(solution(123))
