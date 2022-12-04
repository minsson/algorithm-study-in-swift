//
//  PGS_120837.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/03.
// https://school.programmers.co.kr/learn/courses/30/lessons/120837
// 10분

func answer_PGS_개미군단(_ hp:Int) -> Int {
    var testHp = hp
    let atkPower1 = 1
    let atkPower2 = 3
    let atkPower3 = 5
    var team = 0
    while testHp > 0 {
        if testHp >= 5 {
            let count = testHp / 5
            team += count
            testHp = testHp % 5
        } else if testHp >= 3 {
            let count = testHp / 3
            team += count
            testHp = testHp % 3
        } else {
            team += testHp
            testHp = 0
        }
    }
    return team
}
