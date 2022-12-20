//
//  PGS_120845.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/18.
// https://school.programmers.co.kr/learn/courses/30/lessons/120845
// 주사위의 개수
// 2분

func answer_PGS_주사위의개수(_ box:[Int], _ n:Int) -> Int {
    let x = box[0] / n
    let y = box[1] / n
    let z = box[2] / n

    return x*y*z
}
