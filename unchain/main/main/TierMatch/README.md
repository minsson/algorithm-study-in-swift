## 10월 1주차
### 레벨
### 참가자
[unchain](https://github.com/unchain123) <- 마크다운 문법으로 링크 생성
[minsson](https://github.com/minsson) 🏅 <- 더 빠르게 정답을 낸 사람 옆에 메달 이모지

### 문제 풀이

```swift
let arr = ["a","e", "i", "o", "u", "A", "E", "I", "O", "U"]
var line = readLine()!
    while line != "#" {
        print(line.filter({ element in
            arr.contains(String(element))
        }).count)
        line = readLine()!
    }
```

### 알게된 점
 좀 더 단순하게 만들 필요가 있음
### 중요한 점
 string 배열에서 contains를 통해 분리할 때 string.element가 되기 때문에 String으로 타입을 변환 해줘야 함
### 기타
