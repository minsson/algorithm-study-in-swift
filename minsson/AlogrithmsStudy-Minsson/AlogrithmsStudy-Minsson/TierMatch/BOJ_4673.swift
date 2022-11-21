//
//  BOJ_4673.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/11/11.
//  https://www.acmicpc.net/problem/4673

func answer_BOJ_셀프넘버_4673() {
    func d(_ i: Int) -> Int {
        let origin = String(i)
        let splitedNumbers: [Int] = origin.map { Int(String($0))! }
        
        var sumOfSplitedNumbers = 0
        splitedNumbers.forEach { sumOfSplitedNumbers += $0 }
        
        return i + sumOfSplitedNumbers
    }
    
    var selfNumbers = Set.init(1...10000) // Sequence 타입을 아규먼트로 받는 생성자

    selfNumbers.forEach { selfNumbers.remove(d($0)) }
    selfNumbers.sorted().forEach { print($0) }
}
