//
//  PGS_120846.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120846
// 합성수 찾기
// 15분

func answer_PGS_합성수찾기(_ n:Int) -> Int {
    var count = 0
    for i in (1...n).reversed() {
        if i % 2 == 0 && (i / 2) > 1 {
            count += 1
        } else if i % 3 == 0 && (i / 3) > 1 {
            count += 1
        } else if i % 5 == 0 && (i / 5) > 1 {
            count += 1
        } else if i % 7 == 0 && (i / 7) > 1 {
            count += 1
        } else {
            continue
        }
    }
    return count
}
//print(answer_PGS_합성수찾기(10))

// 솔루션 중 참고

//func solution(_ n: Int) -> Int {
//    (1...n).filter { i in
//        (1...i).filter { i % $0 == 0 }.count > 2
//    }.count
//}

// 합성수 = 약수가 3개 이상인 수
// 1과 자기자신 외에 약수가 존재하면 가능
