//
//  PGS_120811.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/12/18.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120811

import Foundation

func answer_PGS_중앙값구하기_solution(_ array:[Int]) -> Int {
    let sortedArray = array.sorted()

    return sortedArray[sortedArray.count / 2]
}
