//
//  PGS_92341.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/25.
// https://school.programmers.co.kr/learn/courses/30/lessons/92341
// 1시간 31분
// LV2

import Foundation

func answer_PGS_주차요금계산(_ fees:[Int], _ records:[String]) -> [Int] {
    var dic1: [Int: (in: Int, out: Int)] = [:]
    var dic2: [Int: Int] = [:]
    
    let baseTime = fees[0]
    let baseFee = fees[1]
    let unitMinute = fees[2]
    let unitFee = fees[3]
    
    for record in records {
        let input = record.split(separator: " ")
        let time = input[0]
        let splitedTime = time.split(separator: ":").compactMap { Int($0) }
        
        let hour = splitedTime[0]
        let minute = splitedTime[1]
        let totalMinute = (60 * hour) + minute
        let carNumber = Int(input[1])!
        let flag = input[2]
        
        if flag == "IN" {
            if dic1[carNumber] == nil {
                dic1[carNumber] = (in: totalMinute, out: 0)
            } else {
                dic1[carNumber]!.in += totalMinute
            }
        } else {
            if dic1[carNumber] == nil {
                dic1[carNumber] = (in: 0, out: totalMinute)
            } else {
                dic1[carNumber]!.out += totalMinute
            }
        }
        
        if dic1[carNumber]!.out != 0 { // in out 이 모두 기록되었다는 뜻
            let parkingMinute = dic1[carNumber]!.out - dic1[carNumber]!.in
            if dic2[carNumber] == nil {
                dic2[carNumber] = parkingMinute
            } else {
                dic2[carNumber]! += parkingMinute
            }
            dic1.removeValue(forKey: carNumber)
        }
    }
    // 출차내역이 없는 차량은 23:59분 출차처리
    for (index, value) in dic1 {
        if value.out == 0 {
            let parkingMinute = (23 * 60) + 59 - value.in
            if dic2[index] == nil {
                dic2[index] = parkingMinute
            } else {
                dic2[index]! += parkingMinute
            }
        }
    }
    var answer = dic2.sorted { a, b in
        a.key < b.key
    }.map { $0.value }
    answer = answer.map {
        calculateFee(parkingMinute: $0,
                     baseTime: baseTime,
                     baseFee: baseFee,
                     unitMinute: unitMinute,
                     unitFee: unitFee)
    }
    return answer
}

func calculateFee(parkingMinute: Int, baseTime: Int,
                  baseFee: Int, unitMinute: Int, unitFee: Int) -> Int {
    var totalFee = 0
    if parkingMinute <= baseTime {
        totalFee = baseFee
    } else {
        totalFee = baseFee + (Int(ceil(Double(parkingMinute-baseTime)/Double(unitMinute)) * Double(unitFee)))
    }
    return totalFee
}
