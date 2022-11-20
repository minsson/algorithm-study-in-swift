//
//  BOJ_9498.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/11/13.
//  https://www.acmicpc.net/problem/9498

func answer_BOJ_시험성적_9498() {
    let score = Int(readLine()!)!

    switch score {
    case 90...100:
        print("A")
    case 80..<90:
        print("B")
    case 70..<80:
        print("C")
    case 60..<70:
        print("D")
    default:
        print("F")
    }
}
