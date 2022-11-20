//
//  main.swift
//  numberPartner
//
//  Created by Derrick kim on 2022/11/04.
//

import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var numberList: [String] = []
    var correctList: String = ""

    for number in 0...9 {
        if X.contains(String(number)) && Y.contains(String(number)) {
            numberList.append(String(number))
        }
    }

    for overlapNumber in numberList {
        let xx = X.filter {
            String($0) == overlapNumber
        }

        let yy = Y.filter {
            String($0) == overlapNumber
        }

        xx.count <= yy.count ? (correctList += String(xx)) : (correctList += String(yy))
    }

    var result = correctList.map{ String($0) }.sorted(by: >).joined()

    if let zero = Int(result), zero == 0 {
        result = "0"
    }

    return result == "" ? "-1" : result
}
