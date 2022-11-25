//
//  BOJ_나는야_포켓몬_마스터_이다솜_1620.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/09.
// https://www.acmicpc.net/problem/1620
// 30분

func answer_BOJ_나는야_포켓몬_마스터_이다솜_1620() {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let n = input[0]
    let m = input[1]
    var dic = [Int: String]()
    var reversedDic = [String: Int]()
    (1...n).forEach { num in
        let name = readLine()!
        dic[num] = name
        reversedDic[name] = num
    }
    (1...m).forEach { _ in
        let input = readLine()!
        if let number = Int(input) {
            print(dic[number]!)
        } else {
            print(reversedDic[input]!)
        }
    }
}
