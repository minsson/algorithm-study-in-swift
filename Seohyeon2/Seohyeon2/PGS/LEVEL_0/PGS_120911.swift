//
//  PGS_120911.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/11.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120911

import Foundation

func answer_PGS_문자열_정렬하기_2_120911() {
  func solution(_ my_string:String) -> String {
    let result = my_string.map {
      $0.lowercased()
    }.sorted(by: <)
    return result.joined()
  }
}