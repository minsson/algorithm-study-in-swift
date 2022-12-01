//
//  BOJ_4673.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/11/11.
//

//import Foundation

func answer_BOJ_selfNumber() {
    var jungdab = Set<Int>()
    for a in 1...10000 {
        jungdab.insert(a)
    }
    
    for b in jungdab {
        let aa = String(b)
        let aaa = aa.map { Int(String($0))! }
        let sum = b + aaa.reduce(0, +)
        jungdab.remove(sum)
    }
    
    let answer = Array(jungdab).sorted()
    for answer in answer {
        print(answer)
    }
}
