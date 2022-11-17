//
//  main.swift
//  mathFractionAddition
//
//  Created by Derrick kim on 2022/11/16.
//

import Foundation

//첫 번째 분수의 분자와 분모를 뜻하는 denum1, num1, 두 번째 분수의 분자와 분모를 뜻하는 denum2, num2가 매개변수로 주어집니다. 두 분수를 더한 값을 기약 분수로 나타냈을 때 분자와 분모를 순서대로 담은 배열을 return 하도록 solution 함수를 완성해보세요.

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    let denominator = num1 * num2
    let mathFraction = denum1 * num2 + denum2 * num1

    let maximum = matchLeastCommonMultiple(mathFraction, denominator)

    return [mathFraction/maximum, denominator/maximum]
}

func matchLeastCommonMultiple(_ mathFraction: Int, _ denominator: Int) -> Int {
    var leastCommonMultiple = 1
    for number in 1...mathFraction {
        if (mathFraction % number == 0 && denominator % number == 0) {
            leastCommonMultiple = number
        }
    }

    return leastCommonMultiple
}

print(solution(1, 2, 3, 4))
