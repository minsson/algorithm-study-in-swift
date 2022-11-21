//
//  PGS_최빈값구하기.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/20.
// https://school.programmers.co.kr/learn/courses/30/lessons/120812

func answer_PGS_최빈값구하기() {
    
    func solution(_ array:[Int]) -> Int {
        var dic = [Int: Int]()
        array.forEach { num in
            if dic[num] != nil {
                dic[num]! += 1
            } else {
                dic[num] = 1
            }
        }
        var maxValue: Int = 0 {
            didSet {
                if oldValue > maxValue {
                    maxValue = oldValue
                }
            }
        }
        dic.values.forEach {
            maxValue = $0
        }
        var results = [Int]()
        for (index, value) in dic {
            if value == maxValue {
                results.append(index)
            }
        }
        if results.count == 1 {
            return results[0]
        } else {
            return -1
        }
    }
}
