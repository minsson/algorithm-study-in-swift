# 백준

## 브론즈 5

### [Hello World!](ca30d5c)
"Hello, World!"를 출력하는 함수
```swift
print("Hello, World!")
```

### [A+B-8](af5ae56)
두 정수 A와 B를 입력받은 다음, A+B를 출력하는 함수
```swift
func answer_BOJ_11022() {
    let T = Int(readLine()!)!

    for testCase in 1...T {
        let number = readLine()!
        let numberArr = number.split(separator: " ")
        
        let firstNumber = Int(numberArr[0])!
        let secondNumber = Int(numberArr[1])!

        print("Case #\(testCase): \(firstNumber) + \(secondNumber) = \(firstNumber + secondNumber)")
    }
}
```

# 티어전

## 11월 1주차
### 레벨: 브론즈4
### 참가자

[재재](https://github.com/ZZBAE) 🏅 </br>
[본프](https://github.com/apwierk2451)

### 문제 풀이
```swift
func answer_BOJ_1264() {
    let vowelsCheck = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    while true {
        let input = (readLine() ?? "")
        var count = 0

        if input == "#" {
            break
        }

        input.forEach { input in
//            let lower = input.lowercased()
            if vowelsCheck.contains(String(input)) {
                count += 1
            }
        }
        print(count)
    }
}
```

### 알게된 점
lowercased() = 문자열 전체를 소문자로 변환해주는 함수

### 중요한 점

### 기타

---

## 11월 2주차
### 레벨: 브론즈4
### 참가자
[재재](https://github.com/ZZBAE) 🏅 </br>
[민쏜](https://github.com/minsson)

### 문제풀이
```swift
func answer_BOJ_2439() {
    guard let repeatNumber = Int(readLine() ?? "") else { return }

    for num in 1...repeatNumber {
        if(num < repeatNumber) {
            for _ in num...repeatNumber - 1 {
                print(" ", terminator: "")
            }
        }
        for _ in 1...num {
            print("*", terminator: "")
        }
        print()
    }
}

### 알게된 점

```swift
stride(from:, through:, by: ) 함수 복습 후 적용시켜봤던 문제
```
ex) stride(from: 1, through: repeatNumber, by: 1)
ex) stride(from: 1, to: repeatNumber, by: 1)

### 중요한 점

### 기타
