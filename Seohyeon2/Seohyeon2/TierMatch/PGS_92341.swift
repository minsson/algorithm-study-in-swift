//
//  PGS_92341.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/11/28.
// https://school.programmers.co.kr/learn/courses/30/lessons/92341

import Foundation

func answer_PGS_주차_요금_계산_92341() {
    func calculateTime(carIn: String, carOut: String, fees: [Int]) -> Int {
        var isLend = false
        var totalTime = 0
        var hour = ""
        var min = ""

        let time1 = carIn.filter {
            $0.isNumber
        }
        let time2 = carOut.filter {
            $0.isNumber
        }
        
        if Array(time2)[2] < Array(time1)[2] {
            isLend = true
        }
        
        if Array(time2)[2] == Array(time1)[2] && Array(time2)[3] < Array(time1)[3] {
            isLend = true
        }
        
        totalTime = (Int(time2)! - Int(time1)!)
        
        if isLend {
            totalTime -= 40
        }

        let temp = String(totalTime).map { $0 }
        if temp.count < 2 {
            min += String(temp[0])
        } else if temp.count < 3 {
            min += String(temp[0])
            min += String(temp[1])
        } else if temp.count < 4 {
            hour += String(temp[0])
            min += String(temp[1])
            min += String(temp[2])
        } else if temp.count == 4 {
            hour += String(temp[0])
            hour += String(temp[1])
            min += String(temp[2])
            min += String(temp[3])
        }

        totalTime = (Int(hour) ?? 0) * 60 + (Int(min) ?? 0)

        return totalTime
    }

    func solution(_ fees:[Int], _ records:[String]) -> [Int] {
        var splitArr = records.map {
            $0.split(separator: " ")
        }
        var carInfo = [String: Int]()
        var answer = [Int]()
        
        while splitArr.count > 0 {
            let number = splitArr[0][1]
            let car = splitArr.filter {
                $0[1] == number
            }
            
            var count = car.count
            var isOdd = false
            var totalTime = 0
            
            if car.count % 2 != 0 {
                count -= 1
                isOdd = true
            }
            
            for i in stride(from: 0, to: count - 1, by: 2) {
                totalTime += calculateTime(
                    carIn: String(car[i][0]),
                    carOut: String(car[i+1][0]),
                    fees: fees
                )
            }
            
            if isOdd {
                totalTime += calculateTime(
                    carIn: String(car[count][0]),
                    carOut: String("23:59"),
                    fees: fees
                )
            }
        
            if totalTime <= fees[0] {
                carInfo[String(number)] = fees[1]
            } else {
                var temp = (totalTime - fees[0]) / fees[2]
                if (totalTime - fees[0]) % fees[2] != 0 {
                    temp += 1
                }
                let totalFee = temp * fees[3] + fees[1]
                carInfo[String(number)] = totalFee
            }
            
            splitArr = splitArr.filter {
                $0[1] != number
            }
        }
        
        let sorted = carInfo.sorted {
            return $0.key < $1.key
        }
        
        for i in 0..<sorted.count {
            answer.append(sorted[i].value)
        }
        
        return answer
    }
}
