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
    
### [Multiplication](https://github.com/Jeon-Minsu/algorithm-study-in-swift)
- 곱셈 구현
    ```
    let firstInput = readLine()!
        .components(separatedBy: " ")
        .compactMap { Int($0) }
        .first!
    let secondInput = readLine()!
        .unicodeScalars
        .map(String.init)
        .compactMap { Int($0) }

    let firstOperation = firstInput * secondInput[2]
    let secondOperation = firstInput * secondInput[1]
    let thirdOperation = firstInput * secondInput[0]

    print(firstOperation)
    print(secondOperation)
    print(thirdOperation)
    print(firstOperation + secondOperation * 10 + thirdOperation * 100)
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

## 11월 2주차
### Lv.0
### 참가자
[Derrick](https://github.com/derrickkim0109) 🏅 
[수꿍](https://github.com/Jeon-Minsu) 

### 문제 풀이

**문제 설명**
> 3의 배수, 3이 포함되는 숫자를 제외한 나머지 숫자에서 n번째 숫자를 반환하는 문제


```swift

func answer_PGS_저주의숫자_120871(_ n:Int) -> Int {
    var answer = n
    var array: [Int] = []
    var i = 0

    while array.count <= 100 {
        i += 1
        let one = i % 10
        let ten = (i % 100) / 10

        if i % 3 == 0 || one == 3 || ten == 3 {

            if answer >= i {
                answer += 1
            }
        } else {
            array.append(i)
        }
    }

    return answer
}

```

### 알게된 점

- 고차함수로 filter를 돌리면 결과값이 늦게 도출된다.
- 제한 사항 1 ≤ n ≤ 100로 인하여, 100이하의 숫자만을 구하는 줄 알았으나, 파라미터가 100까지 들어간다는 의미였다. 즉, 100 이상의 숫자가 충분히 들어갈 수 있다.

### 기타
- Derrick 승
