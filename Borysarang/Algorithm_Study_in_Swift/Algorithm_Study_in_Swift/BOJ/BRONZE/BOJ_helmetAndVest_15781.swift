//
//  BOJ_helmetAndVest_15781.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/27.
//

import Foundation

func answer_헬멧과방탄조끼_15781() {
    
    print(problem_15781())
    
}

func problem_15781() -> Int {
    var highQualityHelmet = 0
    var highQualityVest = 0
    
    let NandM = readLine()?.components(separatedBy: " ").map{Int($0)!}
    
    let helmets = readLine()?.components(separatedBy: " ").compactMap({ str in
        return Int(str)!
    })
    
    for helmet in helmets! {
        if highQualityHelmet < helmet {
            highQualityHelmet = helmet
        }
    }
    
    let vests = readLine()?.components(separatedBy: " ").compactMap({ str in
        return Int(str)!
    })
    
    for vest in vests! {
        if highQualityVest < vest {
            highQualityVest = vest
        }
    }
    
    return highQualityVest + highQualityHelmet
}
