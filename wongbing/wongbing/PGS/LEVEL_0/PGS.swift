//
//  PGS.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/18.
//

import Foundation

// https://school.programmers.co.kr/learn/courses/30/lessons/120848
// 팩토리얼
// 5분

func answer_PGS_팩토리얼(_ n:Int) -> Int {
    var factorial = 1
    for i in 1...10 {
        factorial *= i
        if factorial < n {
            continue
        } else {
            return i-1
        }
    }
    return 10
}

//https://school.programmers.co.kr/learn/courses/30/lessons/120849
// 모음 제거
// 2분

func answer_PGS_모음제거(_ my_string:String) -> String {
    var result = ""
    my_string.forEach { char in
        if ["a","e","i","o","u"].contains(String(char)) == false {
            result += String(char)
        }
    }
    return result
}

//https://school.programmers.co.kr/learn/courses/30/lessons/120850
// 문자열 정렬하기
// 1분 30초

func answer_PGS_문자열정렬하기(_ my_string:String) -> [Int] {
    var result = my_string.compactMap { Int(String($0)) }
    return result.sorted()
}

//https://school.programmers.co.kr/learn/courses/30/lessons/120851
// 숨어있는 숫자의 덧셈1
// 1분 30초

func answer_PGS_숨어있는_숫자의_덧셈1(_ my_string:String) -> Int {
    var result = my_string.compactMap { Int(String($0)) }
    return result.reduce(0, +)
}

//https://school.programmers.co.kr/learn/courses/30/lessons/120852
// 소인수분해
// 8분 / 10점

func answer_PGS_소인수분해(_ n:Int) -> [Int] {
    var result = [Int]()
    var tmp = n
    for i in 2...n {
        while tmp % i == 0 {
            tmp /= i
            result.append(i)
        }
    }
    return Set(result).sorted()
}

// https://school.programmers.co.kr/learn/courses/30/lessons/120853
// 컨트롤 제트
// 6분

func answer_PGS_컨트롤제스(_ s:String) -> Int {
    let list = s.split(separator: " ").map { String($0) }
    var pass = false
    var result = 0
    for i in list.reversed() {
        if i == "Z" {
            pass = true
            continue
        }
        if pass == true {
            pass = false
            continue
        } else {
            result += Int(i)!
        }
    }
    return result
}

//https://school.programmers.co.kr/learn/courses/30/lessons/120854
// 배열원소의 길이
// 50초

func answer_PGS_배열원소의길이(_ strlist:[String]) -> [Int] {
    return strlist.map { $0.count }
}

// https://school.programmers.co.kr/learn/courses/30/lessons/120888
// 중복된 문자 제거
// 5분

func answer_PGS_중복된문자제거(_ my_string:String) -> String {
    var setArr = Array<String>()
    my_string.forEach { char in
        let ch = String(char)
        if setArr.contains(ch) == false {
            setArr.append(ch)
        }
    }
    return setArr.reduce("", +)
}

// https://school.programmers.co.kr/learn/courses/30/lessons/120889
// 삼각형의 완성조건 1
// 2분 30초

func answer_PGS_삼각형의완성조건1(_ sides:[Int]) -> Int {
    var orderedArr = sides.sorted()
    let max = orderedArr.removeLast()
    if max < orderedArr.reduce(0, +) {
        return 1
    } else {
        return 2
    }
}

// https://school.programmers.co.kr/learn/courses/30/lessons/120898
// 편지
// 1분

func answer_PGS_편지(_ message:String) -> Int {
    return message.count * 2
}

// https://school.programmers.co.kr/learn/courses/30/lessons/120899
// 가장 큰 수 찾기
// 2분

func answer_PGS_가장큰수찾기(_ array:[Int]) -> [Int] {
    let max = array.max()!
    return [max, array.firstIndex(of: max)!]
}

// https://school.programmers.co.kr/learn/courses/30/lessons/120902
// 문자열 계산하기
// 7분

func answer_PGS_문자열계산하기(_ my_string:String) -> Int {
    let list = my_string.split(separator: " ").map { String($0) }
    var result = Int(list[0])!
    for i in stride(from: 1, to: list.count, by: 2) {
        if list[i] == "+" {
            result += Int(list[i+1])!
        } else {
            result -= Int(list[i+1])!
        }
    }
    return result
}

//https://school.programmers.co.kr/learn/courses/30/lessons/120903
// 배열의 유사도
// 2분
func answer_PGS_배열의유사도(_ s1:[String], _ s2:[String]) -> Int {
    var result = 0
    s1.forEach { str in
        if s2.contains(str) {
            result += 1
        }
    }
    return result
}

// https://school.programmers.co.kr/learn/courses/30/lessons/120904
// 숫자찾기
// 2분
func answer_PGS_숫자찾기(_ num:Int, _ k:Int) -> Int {
    var numStr = Array(String(num))
    var result = numStr.firstIndex(of: Character(String(k)))
    if let result = result {
        return result + 1
    } else {
        return -1
    }
}

//https://school.programmers.co.kr/learn/courses/30/lessons/120905
// n의 배수 고르기
// 1분
func answer_PGS_n의배수고르기(_ n:Int, _ numlist:[Int]) -> [Int] {
    return numlist.filter { $0 % n == 0}
}


//https://school.programmers.co.kr/learn/courses/30/lessons/120906
// 자리수 더하기
// 2분
func answer_PGS_자리수더하기(_ n:Int) -> Int {
    let arr = Array(String(n))
    let newArr = arr.compactMap { Int(String($0)) }
    return newArr.reduce(0, +)
}

//https://school.programmers.co.kr/learn/courses/30/lessons/120907
// ox퀴즈
// 2분
func answer_PGS_OX퀴즈(_ quiz:[String]) -> [String] {
    var result = [String]()
    quiz.forEach { oneQuize in
        let arr = oneQuize.split(separator: " ").map { String($0) }
        let answer = Int(arr[4])!
        if arr[1] == "+" {
            if Int(arr[0])! + Int(arr[2])! == answer {
                result.append("O")
            } else {
                result.append("X")
            }
        } else {
            if Int(arr[0])! - Int(arr[2])! == answer {
                result.append("O")
            } else {
                result.append("X")
            }
        }
        
    }
    return result
}

//https://school.programmers.co.kr/learn/courses/30/lessons/120908
// 문자열안에 문자열

func answer_PGS_문자열안에문자열(_ str1:String, _ str2:String) -> Int {
    if str1.contains(str2) {
        return 1
    } else {
        return 2
    }
}

//https://school.programmers.co.kr/learn/courses/30/lessons/120909
// 제곱수 판별하기

func answer_PGS_제곱수판별하기(_ n:Int) -> Int {
    for i in 1...n {
        if i*i == n {
            return 1
        }
    }
    return 2
}

//https://school.programmers.co.kr/learn/courses/30/lessons/120910
// 세균 증식

func answer_PGS_세균증식(_ n:Int, _ t:Int) -> Int {
    var result = n
    for _ in 1...t {
        result *= 2
    }
    return result
}

//https://school.programmers.co.kr/learn/courses/30/lessons/120911
// 문자열 정렬하기2

func answer_PGS_문자열정렬하기2(_ my_string:String) -> String {
    var lowercasedString = my_string.lowercased()
    let newArr = lowercasedString.sorted().map { String($0) }
    return newArr.joined()
}
