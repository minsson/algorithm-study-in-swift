//
//  PGS_12926.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/12/11.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12926

func answer_PGS_시저암호(_ s:String, _ n:Int) -> String {
    let a = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var result = ""
    
    for str in s {
        if str == " " {
            result += " "
            continue
        }
        
        if let index = a.firstIndex(of: String(str)) {
            if index + n < a.count {
                result += a[index + n]
            } else {
                result += a[index + n - a.count]
            }
        } else {
            let lowerIndex = String(str).lowercased()
            let index = a.firstIndex(of: lowerIndex)!
            
            if index + n < a.count {
                result += a[index + n].uppercased()
            } else {
                result += a[index + n - a.count].uppercased()
            }
        }
    }
    
    return result
}
