//
//  main.swift
//  BOJ_1526
//
//  Created by LeeChiheon on 2022/12/16.
//

var inputNumber = Int(readLine()!)!

while isHaveOnlyFourOrSeven(what: inputNumber) == false {
    inputNumber -= 1
}

print(inputNumber)

func isHaveOnlyFourOrSeven(what: Int) -> Bool {
    var count = 0
    
    String(what).forEach {
        if $0 == "4" || $0 == "7" {
            count += 1
        }
    }
    
    return count == String(what).count
}
