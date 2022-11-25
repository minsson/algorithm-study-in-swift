//
//  main.swift
//  parkingcost
//
//  Created by Derrick kim on 2022/11/24.
//

import Foundation
//fees의 길이 = 4
//
//fees[0] = 기본 시간(분)
//1 ≤ fees[0] ≤ 1,439
//fees[1] = 기본 요금(원)
//0 ≤ fees[1] ≤ 100,000
//fees[2] = 단위 시간(분)
//1 ≤ fees[2] ≤ 1,439
//fees[3] = 단위 요금(원)
//1 ≤ fees[3] ≤ 10,000

//1 ≤ records의 길이 ≤ 1,000

//records의 각 원소는 "시각 차량번호 내역" 형식의 문자열입니다.
//시각, 차량번호, 내역은 하나의 공백으로 구분되어 있습니다.
//시각은 차량이 입차되거나 출차된 시각을 나타내며, HH:MM 형식의 길이 5인 문자열입니다.
//HH:MM은 00:00부터 23:59까지 주어집니다.
//잘못된 시각("25:22", "09:65" 등)은 입력으로 주어지지 않습니다.
//차량번호는 자동차를 구분하기 위한, `0'~'9'로 구성된 길이 4인 문자열입니다.
//내역은 길이 2 또는 3인 문자열로, IN 또는 OUT입니다. IN은 입차를, OUT은 출차를 의미합니다.
//records의 원소들은 시각을 기준으로 오름차순으로 정렬되어 주어집니다.
//records는 하루 동안의 입/출차된 기록만 담고 있으며, 입차된 차량이 다음날 출차되는 경우는 입력으로 주어지지 않습니다.
//같은 시각에, 같은 차량번호의 내역이 2번 이상 나타내지 않습니다.
//마지막 시각(23:59)에 입차되는 경우는 입력으로 주어지지 않습니다.
//아래의 예를 포함하여, 잘못된 입력은 주어지지 않습니다.
//주차장에 없는 차량이 출차되는 경우
//주차장에 이미 있는 차량(차량번호가 같은 차량)이 다시 입차되는 경우

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    // 차량 번호: 가격
    var result: [String: Int] = [:]

    var vehicleDictionary: [String: [VehicleInfo]] = [:]

    for record in records {
        let vehicleInfo = record.split(separator: " ").map{ String($0) }
        // 차량 번호 - 차량 입출차 시간 - 입출차

        if vehicleDictionary[vehicleInfo[1]] != nil {
            vehicleDictionary[vehicleInfo[1]]?.append(VehicleInfo(time: vehicleInfo[0], inoutInfo: INOUT(rawValue: vehicleInfo[2])!))
        } else {
            vehicleDictionary.updateValue([VehicleInfo(time: vehicleInfo[0], inoutInfo: INOUT(rawValue: vehicleInfo[2]) ?? .in)],
                                          forKey: vehicleInfo[1])
        }
    }

    for (vehicleNumber, vehicleInfoArray) in vehicleDictionary {

        var inTime = vehicleInfoArray.filter{ $0.inoutInfo == .in }.map{ $0.time.split(separator: ":").map{ Int($0)! } }
        var outTime = vehicleInfoArray.filter{ $0.inoutInfo == .out }.map{ $0.time.split(separator: ":").map{ Int($0)! } }

        if inTime.count != outTime.count {
            outTime.append([23, 59])
        }

        for (index, intime) in inTime.enumerated() {
            let startHour = intime[0]
            let startMinute = intime[1]

            let endHour = outTime[index][0]
            let endMinute = outTime[index][1]

            if result[vehicleNumber] == nil {
                result.updateValue(calculateTime(startHour, startMinute, endHour, endMinute), forKey: vehicleNumber)
            } else {
                guard let price = result[vehicleNumber] else {
                    return []
                }

                result[vehicleNumber] = price + calculateTime(startHour, startMinute, endHour, endMinute)
            }
        }
    }

    let sortedDictionary = result.sorted { (first, second) in
        return first.key < second.key }.map{ $0.value }

    var answer: [Int] = []


    for value in sortedDictionary {
        answer.append(calculateParkingCost(fees, accumulatedTime: value))
    }

    return answer
}

func calculateParkingCost(_ fees: [Int], accumulatedTime: Int) -> Int {
    let basicTime = fees[0]
    let basicPrice = fees[1]
    let perTime = fees[2]
    let perPrice = fees[3]

    if accumulatedTime - basicTime < 0 {
        return basicPrice
    }

    var time = 0
    if (accumulatedTime - basicTime) % perTime != 0 {
        time = ((accumulatedTime - basicTime) / perTime) + 1
    } else {
        time = ((accumulatedTime - basicTime) / perTime)
    }

    return basicPrice + (Int(time)) * perPrice
}

func calculateTime(_ startHour: Int, _ startMinute: Int,
                   _ endHour: Int, _ endMinute: Int) -> Int {
    return (endHour - startHour) * 60 + (endMinute - startMinute)
}

struct VehicleInfo {
    let time: String
    let inoutInfo: INOUT
}

enum INOUT: String {
    case `in` = "IN"
    case `out` = "OUT"
}


print(solution([180, 5000, 10, 600], ["05:34 5961 IN",
                                      "06:00 0000 IN",
                                      "06:34 0000 OUT",
                                      "07:59 5961 OUT",
                                      "07:59 0148 IN",
                                      "18:59 0000 IN",
                                      "19:09 0148 OUT",
                                      "22:59 5961 IN",
                                      "23:00 5961 OUT"]))
