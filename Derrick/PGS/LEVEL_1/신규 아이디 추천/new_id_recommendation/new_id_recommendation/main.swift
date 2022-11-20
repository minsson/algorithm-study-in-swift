//
//  main.swift
//  new_id_recommendation
//
//  Created by Derrick kim on 2022/11/16.
//

import Foundation

// 규칙
// 1. 아이디 길이 3~15 (O)
// 2. 알파벳 소문자, 숫자, (-), (_), (.) (O)
// 3. (.) 처음과 끝에 사용, 연속 사용 제외

// 처리해야 하는 부분
// 1. 대문자 모두 소문자로 치환 (O)
// 2. 규칙 2번내용을 제외한 모든 내용 제외; (O)
// 3. (.)2번 이상 연속된 부분 하나의 (.)로 치환 (O)
// 4. (.) 처음과 끝에 위치한다면 제거 (O)
// 6. 16자 이상이면 첫 15개의 문자를  제외한 나머지 문자들 모두 제거 (O)
    // 만약 제거 후 끝에 (.)가 있다면 (.)문자 제거(O)

// 5. 빈 문자열이라면 new_id = "a" (O)
// 7. new_id의 길이가 2자 이하라면, new_id의 마지막 문자를 new_id의 길이가 3이 될 때까지 반복해서 끝에 붙인다. (O)

func solution(_ new_id: String) -> String {
    var result = cencorRegularExpression(new_id.lowercased())

    if result.count == 0 {
        result = "a"
    } else if (result.count >= 3) && (result.count <= 15) {
        return result
    } else if result.count >= 16 {
        return removeOtherString(result)
    }

    if result.count <= 2 {
        return repeatLastCharacter(result)
    } 

    return ""
}

func removeOtherString(_ new_id: String) -> String {
    var result = ""

    for (index, word) in new_id.enumerated() {
        if index == 14 {
            if word != "." {
                return result + String(word)
            } else {
                return result
            }
        }

        result += String(word)
    }

    return result
}



func repeatLastCharacter(_ new_id: String) -> String {
    var id = new_id

    guard let lastWord = new_id.map({ String($0) }).last else {
        return ""
    }

    while id.count != 3 {
        id += lastWord
    }

    return id
}

func removeFullStop(_ new_id: String) -> String {
    var result = new_id

    while result.contains("..") {
        result = result.replacingOccurrences(of: "..", with: ".")
      }

    return result
}

func cencorRegularExpression(_ new_id: String) -> String {
    let pattern = "^[0-9a-z\\_\\-\\.]*$"
    var result = ""

    let special = ["_", "-", "."]

    for word in new_id {
        let wordStr = String(word)
        if (wordStr.range(of: pattern, options: .regularExpression) != nil) {
            if special.contains(String(word)) {
                result += String(word)
            } else {
                result += String(word).lowercased()
            }
        }
    }

    result = removeFullStop(result)
    result = removeFullStopFirstAndLast(result)
    return result
}

func removeFullStopFirstAndLast(_ new_id: String) -> String {
    var result = new_id
    if new_id.first == "." {
        result.removeFirst()
    }

    if new_id.last == "." && result.count > 1 {
        result.removeLast()
    }

    return result
}

func checkIdLengthValidation(_ new_id: String) -> Bool {
    if (new_id.count >= 3) && (new_id.count <= 15) {
        return true
    }
    return false
}

print(solution("=.="))
