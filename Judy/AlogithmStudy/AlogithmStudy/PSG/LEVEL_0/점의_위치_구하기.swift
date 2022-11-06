//
//  점의_위치_구하기.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/10/28.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120841

import Foundation

func answer_PGS_점의_위치_구하기(_ dot:[Int]) -> Int {
    let x = dot[0]
    
    if x * dot[1] > 0 {
        return x > 0 ? 1 : 3
    } else {
        return x > 0 ? 4 : 2
    }
}
