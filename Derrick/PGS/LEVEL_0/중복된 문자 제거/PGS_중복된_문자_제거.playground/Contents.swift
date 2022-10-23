//
//  PGS_중복된_문자_제거.playground <- 문제명
//  algorithm-study-in-swift <- 프로젝트명
//
//  Created by derrick on 2022/10/23.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120888 <- 문제 주소
import Foundation

func solution(_ my_string:String) -> String {
    var result = ""
    for word in my_string {
        if !result.contains(word) {
            result += String(word)
        }
    }
    return result
}
