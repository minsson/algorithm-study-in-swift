//
//  PGS_12977.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12977

import Foundation

func answer_PGS_소수_만들기_12977() {
    func solution(_ nums:[Int]) -> Int {
        var answer = 0
        var numbers = [[Int]]()
        
        for i in 0..<nums.count-2 {
            for j in i+1..<nums.count-1 {
                for k in j+1..<nums.count {
                    numbers.append([nums[i],nums[j],nums[k]])
                }
            }
        }
        
        for i in numbers {
            var count = 0
            let sum = i.reduce(0,+)
            
            for i in 1...sum {
                if sum % i == 0 {
                    count += 1
                }
            }
            
            if count == 2 {
                answer += 1
            }
            
            count = 0
        }
        
        
        return answer
    }
}
