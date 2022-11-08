# 백준

## 브론즈

### [HelloWorld](https://github.com/Jeon-Minsu/algorithm-study-in-swift)
- Hello World 출력 방법
    ```
    func answer_BOJ_HelloWorld_2557() {
    print("Hello World!")
    }
    ```
### [A플러스B](https://github.com/Jeon-Minsu/algorithm-study-in-swift)
- 정수를 더하는 방법
    ```
    let input = readLine()!.components(separatedBy: " ")
    let a = Int(input.first!)!
    let b = Int(input.last!)!

    if a > 0, a < 10, b > 0, b < 10 {
        print(a + b)
    }
    ```
    
### [Surprise](https://github.com/Jeon-Minsu/algorithm-study-in-swift)
- 놀람 표시
    ```
    let input = readLine()!

    print("\(input)??!")
    ```
    
### [TaiwanYear](https://github.com/Jeon-Minsu/algorithm-study-in-swift)
- 태국식 불기년도 적용
    ```
    let input = Int(readLine()!)!

    print(input - 543)
    ```
    
### [Chess](https://github.com/Jeon-Minsu/algorithm-study-in-swift)
- 체스 게임을 위한 체스말 가감 방법 구현
    ```
    let input = readLine()!.components(separatedBy: " ")
    let need = [1, 1, 2, 2, 2, 8]
    var printNeed = ""

    for i in 0..<input.count {
        let chessPiece = Int(input[i])!
        let piece = need[i] - chessPiece
        printNeed += String(piece) + " "
    }

    print(printNeed)
    ```

### [Remainder](https://github.com/Jeon-Minsu/algorithm-study-in-swift)
- 나머지를 구하는 네 가지 방법 구현
    ```
    let input = readLine()!.components(separatedBy: " ")
    let a = Int(input[0])!
    let b = Int(input[1])!
    let c = Int(input[2])!

    print((a + b) % c)
    print(((a % c) + (b % c)) % c)
    print((a * b) % c)
    print(((a % c) * (b % c)) % c)
    ```

# 티어전
## 10월 4주차
### 브론즈
### 참가자
[수꿍](https://github.com/Jeon-Minsu)
[바드](https://github.com/bar-d) 🏅

### 문제 풀이

```
func answer_BOJ_사칙연산_10869() {
    let input = readLine()!
    let string = input.components(separatedBy: " ")
    let a = Int(string.first ?? "0")!
    let b = Int(string.last ?? "0")!

    if a <= 10000, b <= 10000 {
        print(a + b)
        print(a - b)
        print(a * b)
        print(a / b)
        print(a % b)
    }
}
```

### 알게된 점
- readLine 변수명을 readLine과 똑같이 하면 컴파일 에러가 남

### 중요한 점
- 없음

### 기타 
- 없음

## 11월 1주차
### 브론즈
### 참가자
[수꿍](https://github.com/Jeon-Minsu) 🏅
[보리사랑](https://github.com/yusw10)

### 문제 풀이

```
func answer_BOJ_사칙연산_10869() {
    let input = Int(readLine()!)!

    var answers: [String] = []

    for i in 0..<input {
        let twoInput = readLine()!.components(separatedBy: " ").map { Int($0)! }

        let answer = "Case #\(i+1): \(twoInput[0]) + \(twoInput[1]) = \(twoInput[0] + twoInput[1])"
        answers.append(answer)
    }

    answers.forEach { print($0) }
}
```

### 알게된 점
- 함수로 제출할 때, 함수를 호출안하면 틀렸다고 나옴

### 중요한 점
- 없음

### 기타 
- 없음
