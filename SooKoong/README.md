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
