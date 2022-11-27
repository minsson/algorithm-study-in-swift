//
//  BOJ_좌표_압축_18870.swift
//  wongbing
//
//  Created by 이원빈 on 2022/10/28.
// https://www.acmicpc.net/problem/18870
// 43분

func answer_BOJ_좌표_압축_18870() {
    var dic: [Int:Int] = [:]
    let N = Int(readLine()!)!
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let orderedList = Array(Set(input)).sorted()
    orderedList.enumerated().forEach { (index, num) in
        dic[num] = index
    }
    input.forEach { num in
        print(dic[num]!, terminator: " ")
    }
}
