//
//  PGS_147355.swift
//  AlogithmStudy
//
//  Created by Judy on 2023/01/19.
//

import Foundation

func answer_PGS_크기가작은부분문자열(_ t:String, _ p:String) -> Int {
    let number = Int(p)!
    let count = p.count
    var startIndex = t.startIndex
    var endIndex = t.index(startIndex, offsetBy: count-1)
    var result = 0
    
    while endIndex != t.endIndex {
        if Int(String(t[startIndex...endIndex]))! <= number {
            result += 1
        }
        
        startIndex = t.index(startIndex, offsetBy: 1)
        endIndex = t.index(startIndex, offsetBy: count-1)
    }
    
    return result
}
