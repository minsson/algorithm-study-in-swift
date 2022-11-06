//
//  짤라서 배열로 저장하기.swift
//  algorithm-study-in-swift
//
//  Created by Derrick kim on 2022/10/30.
// https://school.programmers.co.kr/learn/courses/30/lessons/120913

import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    let a = Array(my_str).map{ String($0) }
    var result = [String]()
    for index in 0...my_str.count/n {
        var char = ""
        for next in index * n..<index * n + n  {
            if my_str.count - 1  < next {
                break
            }

            char += a[next]
        }
        if char != "" {
            result.append(char)
        }
    }

    return result
}
