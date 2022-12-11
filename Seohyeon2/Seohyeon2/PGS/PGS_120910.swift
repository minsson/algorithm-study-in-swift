//
//  PGS_120910.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/11.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120910

import Foundation

func answer_PGS_세균_증식_120910() {
  func solution(_ n:Int, _ t:Int) -> Int {
    var result = n
    (1...t).forEach { _ in
       result *= 2
    }  
    return result
  }
}