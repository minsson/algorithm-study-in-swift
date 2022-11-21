//
//  PGS_중앙값구하기.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/20.
// https://school.programmers.co.kr/learn/courses/30/lessons/120811

func answer_PGS_중앙값구하기() {
    
    func solution(_ array:[Int]) -> Int {
        let centerIndex = array.count / 2
        let sortedArr = array.sorted()
        return sortedArr[centerIndex]
    }
}
