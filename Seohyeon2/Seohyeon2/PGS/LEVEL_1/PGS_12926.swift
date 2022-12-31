//
//  PGS_12926.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12926

import Foundation

func answer_PGS_시저_암호_12926() {
    func solution(_ s:String, _ n:Int) -> String {
        let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        var result = ""
        var index = 0
        
        for i in s {
            if String(i) == " " {
                result += " "
            } else if i.isUppercase {
                index = alphabet.firstIndex(of: String(i).lowercased())! + n
                
                if index >= alphabet.count {
                    index -= alphabet.count
                }
                
                result += (alphabet[index]).uppercased()
            } else {
                index = alphabet.firstIndex(of: String(i))! + n
                
                if index >= alphabet.count {
                    index -= alphabet.count
                }
                
                result += alphabet[index]
            }
        }
        
        return result
    }
}
