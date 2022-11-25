//
//  PGS_각도기.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/20.
// https://school.programmers.co.kr/learn/courses/30/lessons/120829
 
func answer_PGS_각도기() {
    
    func solution(_ angle:Int) -> Int {
        switch angle {
        case let ang where ang > 0 && ang < 90 :
            return 1
        case let ang where ang == 90  :
            return 2
        case let ang where ang == 180:
            return 4
        case let ang where ang < 180 && ang > 90:
            return 3
        default:
            return 0
        }
    }
}
