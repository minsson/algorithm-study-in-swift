//
//  anser_BOJ_3003.swift
//  main
//
//  Created by 오경식 on 2022/12/18.
//

import Foundation

func anser_BOJ_3003() {
    let input = readLine()!
    let lineArr = input.split(separator: " ")
    let a = Int(lineArr[0])!
    let b = Int(lineArr[1])!
    let c = Int(lineArr[2])!
    let d = Int(lineArr[3])!
    let e = Int(lineArr[4])!
    let f = Int(lineArr[5])!
    let answer = [-(a-1), -(b-1), -(c-2), -(d-2), -(e-2), -(f-8)]
    for index in answer {
        print(index, terminator: " ")
    }
}
