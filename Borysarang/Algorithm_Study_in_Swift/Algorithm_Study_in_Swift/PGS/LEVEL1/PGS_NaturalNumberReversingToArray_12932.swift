//
//  PGS_NaturalNumberReversingToArray_12932.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/12/25.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12932
//

import Foundation

func answer_자연수뒤집어배열로만들기_12932() {
    let testInput: [Int] = [54321] //입력값 조정하기
    testInput.forEach { input in
        print(solution12932(Int64(input)))
    }
}

func solution12932(_ input: Int64) -> [Int] { // 프로그래머스 솔루션폼을 여기에 복붙하기
    var answer: [Int] = []
        var number = Int(input)
        while true {
            if number / 10 == 0 {
                answer.append(number % 10)
                break
            }
            
            answer.append(number % 10)
            number = number / 10
        }
        
        
        return answer
}
