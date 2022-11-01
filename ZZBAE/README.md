# 백준

## 브론즈

### [Hello World!](ca30d5c)
```swift
print("Hello, World!")
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
