//
//  main.swift
//  CheckPersonalityType
//
//  Created by Derrick kim on 2022/11/28.
//

import Foundation

enum Score: Int {
    case veryDisAgree = 1
    case disAgree = 2
    case slightlyDisAgree = 3
    case unknown = 4
    case slightlyAgree = 5
    case agree = 6
    case veryAgree = 7

    var value: Int {
        switch self {
        case .veryDisAgree:
            return 3
        case .disAgree:
            return 2
        case .slightlyDisAgree:
            return 1
        case .unknown:
            return 0
        case .slightlyAgree:
            return 1
        case .agree:
            return 2
        case .veryAgree:
            return 3
        }
    }
}

func solution(_ survey:[String], _ choices:[Int]) -> String {

    var result = ""

    var scoresDic: [String: Int] = [
        "R":0,
        "T":0,
        "C":0,
        "F":0,
        "J":0,
        "M":0,
        "A":0,
        "N":0,
    ]
    let personalityType = ["RT", "CF", "JM", "AN"]

    for (index, types) in survey.enumerated() {
        let firstType = types.first.map{ String($0) }

        let secondType = types.last.map{ String($0) }

        if choices[index] == 4 {
            scoresDic[firstType!]! += 0
            scoresDic[secondType!]! += 0
        } else if choices[index] < 4 {

            if scoresDic[firstType!] != nil {
                scoresDic[firstType!]! += Score(rawValue: choices[index])?.value ?? 0
            } else {
                scoresDic.updateValue(Score(rawValue: choices[index])?.value ?? 0, forKey: firstType!)
            }

            if scoresDic[secondType!] != nil {
                scoresDic[secondType!]! += 0
            } else {
                scoresDic.updateValue(0, forKey: secondType!)
            }

        } else {
            if scoresDic[secondType!] != nil {
                scoresDic[secondType!]! += Score(rawValue: choices[index])?.value ?? 0
            } else {
                scoresDic.updateValue(Score(rawValue: choices[index])?.value ?? 0, forKey: secondType!)
            }

            if scoresDic[firstType!] != nil {
                scoresDic[firstType!]! += 0
            } else {
                scoresDic.updateValue(0, forKey: firstType!)
            }
        }
    }

    for types in personalityType {
        let firstType = types.first.map{ String($0) }
        let secondType = types.last.map{ String($0) }

        if scoresDic[firstType!]! == scoresDic[secondType!]! {
            let firstUnicode = Unicode.Scalar(firstType!)?.value
            let secondUnicode = Unicode.Scalar(secondType!)?.value

            result += (firstUnicode! < secondUnicode! ? firstType : secondType)!
        } else {
            result += (scoresDic[firstType!]! > scoresDic[secondType!]! ? firstType : secondType)!
        }
    }

    return result
}

print(solution(["TR", "RT", "TR"] , [7, 1, 3]))

