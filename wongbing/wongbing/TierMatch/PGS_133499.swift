//
//  PGS_옹알이(2).swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/18.
// https://school.programmers.co.kr/learn/courses/30/lessons/133499
// 1시간

func answer_PGS_옹알이2() {
    let list = ["aya", "ye", "woo", "ma"]

    func solution(_ babbling: [String]) -> Int {
        var count = 0
        
        for babble in babbling {
            var testBabble = babble
            testBabble = testBabble.replacingOccurrences(of: "aya", with: "1")
            testBabble = testBabble.replacingOccurrences(of: "ye", with: "2")
            testBabble = testBabble.replacingOccurrences(of: "woo", with: "3")
            testBabble = testBabble.replacingOccurrences(of: "ma", with: "4")
            if Int(testBabble) != nil, continuousCheck(in: testBabble) {
                count += 1
            }
        }
        return count
    }

    func continuousCheck(in str: String) -> Bool {
        var previous = ""
        for i in str {
            if previous == String(i) {
                return false
            }
            previous = String(i)
        }
        return true
    }
}
