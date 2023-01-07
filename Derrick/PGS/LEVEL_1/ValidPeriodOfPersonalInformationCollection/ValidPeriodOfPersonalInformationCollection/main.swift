//
//  main.swift
//  ValidPeriodOfPersonalInformationCollection
//
//  Created by Derrick kim on 2023/01/07.
//

import Foundation
//today는 "YYYY.MM.DD" 형태로 오늘 날짜를 나타냅니다.
//1 ≤ terms의 길이 ≤ 20
//terms의 원소는 "약관 종류 유효기간" 형태의 약관 종류와 유효기간을 공백 하나로 구분한 문자열입니다.
//약관 종류는 A~Z중 알파벳 대문자 하나이며, terms 배열에서 약관 종류는 중복되지 않습니다.

//유효기간은 개인정보를 보관할 수 있는 달 수를 나타내는 정수이며, 1 이상 100 이하입니다.
//1 ≤ privacies의 길이 ≤ 100
//privacies[i]는 i+1번 개인정보의 수집 일자와 약관 종류를 나타냅니다.
//privacies의 원소는 "날짜 약관 종류" 형태의 날짜와 약관 종류를 공백 하나로 구분한 문자열입니다.
//날짜는 "YYYY.MM.DD" 형태의 개인정보가 수집된 날짜를 나타내며, today 이전의 날짜만 주어집니다.
//privacies의 약관 종류는 항상 terms에 나타난 약관 종류만 주어집니다.

//today와 privacies에 등장하는 날짜의 YYYY는 연도, MM은 월, DD는 일을 나타내며 점(.) 하나로 구분되어 있습니다.
//2000 ≤ YYYY ≤ 2022
//1 ≤ MM ≤ 12
//MM이 한 자릿수인 경우 앞에 0이 붙습니다.
//1 ≤ DD ≤ 28
//DD가 한 자릿수인 경우 앞에 0이 붙습니다.
//파기해야 할 개인정보가 하나 이상 존재하는 입력만 주어집니다.

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let todayYearMMDD = today.split(separator: ".").map{ Int(String($0))! }
    let todayYear = todayYearMMDD[0]
    let todayMM = todayYearMMDD[1]
    let todayDD = todayYearMMDD[2]

    var termDic: [String: Int] = [:]
    var answer: [Int] = []

    for term in terms {
        let termNameAndPeriod = term.split(separator: " ").map{ String($0) }
        let termName = termNameAndPeriod[0]
        let period = Int(termNameAndPeriod[1])
        termDic[termName] = period
    }

    for index in privacies.indices {
        let info = privacies[index].split(separator: " ").map{ String($0) }
        let contactDate = info[0].split(separator: ".").map{ Int($0)! }
        let term = info[1]

        let contactYear = contactDate[0]
        let contactMM = contactDate[1]
        let contactDD = contactDate[2]

        var expiredYear = contactYear
        var expiredMM = contactMM + termDic[term]!
        var expiredDD = contactDD - 1

        if expiredMM > 12 {
            while expiredMM > 12 {
                expiredMM -= 12
                expiredYear += 1
            }
        }

        if contactDD == 1 {
            expiredDD = 28
            expiredMM -= 1
        }

        if todayYear == expiredYear {
            if todayMM > expiredMM {
                answer.append(index + 1)
            } else if todayMM == expiredMM {
                if todayDD > expiredDD {
                    answer.append(index + 1)
                }
            }
        } else if todayYear > expiredYear {
            answer.append(index + 1)
        }
    }

    return answer
}

print(solution("2022.05.19", ["A 6", "B 12", "C 3"], ["2021.05.02 A", "2021.07.01 B", "2022.02.19 C", "2022.02.20 C"]))
print(solution("2020.01.01", ["Z 3", "D 5"], ["2019.01.01 D", "2019.11.15 Z", "2019.08.02 D", "2019.07.01 D", "2018.12.28 Z"]))
