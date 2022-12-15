//
//  PGS_CaesarCipher_12926.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/12/11.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12926
//

import Foundation

func answer_PGS_12926() {
    let testInput: [(s: String, n: Int)] = [
    ("A  BCD efg",1),
    ("z Z",24),
    ("A a  Z z",25)
    ] //입력값 조정하기
    testInput.forEach { input in
        print(solution12926(input.s, input.n))
    }
}

func solution12926(_ s:String, _ n:Int) -> String {
    let upperString = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    let lowerString = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    let length = upperString.count
    var resultStrings:[String] = []
//    print(targetStringArray)
    s.forEach { targetChar in
        let targetString = String(targetChar)
        if upperString.contains(targetString) {
            guard var index = upperString.firstIndex(of: targetString) else {
                return
            }
            index += n
            if index >= length {
                index -= length
            }
            let resultChar = upperString[index]
            resultStrings.append(resultChar)
        } else if lowerString.contains(targetString){
            guard var index = lowerString.firstIndex(of: targetString) else {
                return
            }
            index += n
            if index >= length {
                index -= length
            }
            let resultChar = lowerString[index]
            resultStrings.append(resultChar)
        } else {
            resultStrings.append(targetString)
        }
    }
    return resultStrings.joined()
}
