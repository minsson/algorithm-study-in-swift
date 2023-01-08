//
//  PGS_42748.swift
//  wongbing
//
//  Created by 이원빈 on 2023/01/08.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/42748
// 티어전 15분

func answer_PGS_k번째수(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var tempArr = array
    var resultArr = [Int]()
    for command in commands {
        let startIndex = command[0]
        let endIndex = command[1]
        let targetIndex = command[2]
        
        let slice = Array(tempArr[startIndex-1...endIndex-1]).sorted()
        let slice2 = tempArr[startIndex-1...endIndex-1]
        let result = slice[targetIndex-1]
        resultArr.append(result)
    }
    return resultArr
}
