//
//  PGS_120838.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/03.
// https://school.programmers.co.kr/learn/courses/30/lessons/120838
// 7분

func answer_PGS_모스부호(_ letter:String) -> String {
    let morse = [
        ".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f",
        "--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l",
        "--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r",
        "...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x",
        "-.--":"y","--..":"z"
    ]
    let words = letter.split(separator: " ").compactMap { String($0) }
    var result = ""
    words.forEach { str in
        result += morse[str]!
    }
    return result
}
