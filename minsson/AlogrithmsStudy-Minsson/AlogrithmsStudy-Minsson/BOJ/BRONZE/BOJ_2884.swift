//
//  BOJ_알람시계_2884.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/10/30.
//  https://www.acmicpc.net/problem/2884

import Foundation

func answer_BOJ_알람시계_2884() { // 14분 소요
    let hm = readLine()!
    let h = Int(hm.components(separatedBy: " ")[0])!
    let m = Int(hm.components(separatedBy: " ")[1])!
    
    let totalM = (h * 60) + m
    
    let resultTotalM = totalM - 45
    
    let resultH = resultTotalM / 60
    let resultM = resultTotalM % 60
    
    if resultH == 0 && resultM < 0 {
        print("23" + " " + String(resultM + 60))
    } else {
        print(String(resultH) + " " + String(resultM))
    }
}
