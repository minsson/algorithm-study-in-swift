//
//  BOJ_어린왕자_1004.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/20.
// https://www.acmicpc.net/problem/1004
// 1시간

import Foundation

func answer_BOJ_어린왕자_1004() {
    
    let T = Int(readLine()!)!
    var list = [Int]()
    for _ in (1...T) {
        let point = readLine()!.split(separator: " ").compactMap { Int($0) }
        let x1 = point[0]
        let y1 = point[1]
        let x2 = point[2]
        let y2 = point[3]
        var result = 0
        let n = Int(readLine()!)!
        for _ in (1...n) {
            let point = readLine()!.split(separator: " ").compactMap { Int($0) }
            let cx = point[0]
            let cy = point[1]
            let r = point[2]
    
            let d1 = calculateDistance(point1: (cx, cy), point2: (x1, y1))
            let d2 = calculateDistance(point1: (cx, cy), point2: (x2, y2))
            var dlist: [Int]
            if d1 > d2 {
                dlist = [d2, d1]
            } else if d1 < d2 {
                dlist = [d1, d2]
            } else {
                continue
            }
    
            if Int(pow(Double(r),2)) > dlist[0] && Int(pow(Double(r),2)) < dlist[1] {
                result += 1
            }
        }
        list.append(result)
    }
    
    func calculateDistance(point1: (x: Int, y: Int), point2: (x: Int, y: Int)) -> Int {
        let sum = pow(Double(point2.x - point1.x),2.0) + pow(Double(point2.y - point1.y),2.0)
        return Int(sum)
    }
    
    list.forEach { num in
        print(num)
    }
}
