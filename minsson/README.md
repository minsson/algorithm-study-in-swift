# 알고리즘 티어전

## 11월 2주차

### 레벨

[BOJ] 셀프 넘버 4673 / 실버5 / 49분

### 참가자

[bonf](https://github.com/apwierk2451)
[minsson](https://github.com/minsson) 🏅 

### 문제 풀이

**문제 설명**

양의 정수 n에 대해 d(75) = 75 + 7 + 5 와 같이 작동하는 함수 d(n)이 있다고 하자. 양의 정수 n이 주어지면 n, d(n), d(d(n))...과 같이 무한수열을 만들 수 있다. 이 때 n을 d(n)의 생성자라고 하자. 이러한 생성자가 없는 숫자를 셀프 넘버라고 한다. 100보다 작은 셀프 넘버는 총 13개가 있다. 1, 3, 5, 7, 9, 20, 31, 42, 53, 64, 75, 86, 97

이 때 10000보다 작거나 같은 셀프 넘버를 한 줄에 하나씩 출력하는 프로그램을 작성하시오.


```swift
func answer_BOJ_셀프넘버_4673() {
    func d(_ i: Int) -> Int {
        let origin = String(i)
        let splitedNumbers: [Int] = origin.map { Int(String($0))! }
        
        var sumOfSplitedNumbers = 0
        splitedNumbers.forEach { sumOfSplitedNumbers += $0 }
        
        return i + sumOfSplitedNumbers
    }
    
    var selfNumbers = Set.init(1...10000) // Sequence 타입을 아규먼트로 받는 생성자

    selfNumbers.forEach { selfNumbers.remove(d($0)) }
    selfNumbers.sorted().forEach { print($0) }
}
```

### 알게된 점

**고차함수 map**

- 자신을 호출할 때 매개변수로 전달된 함수를 실행해, 그 결과를 다시 반환해주는 함수이다.
- 기존 컨테이너의 값은 변경하지 않고, 새로운 컨테이너가 생성되어 반환되므로 기존 데이터를 변형(transform)할 때 많이 쓴다.
- 스위프트의 Sequence, Collection 프로토콜을 따르는 타입과 옵셔널은 모두 맵을 쓸 수 있다.
 
** Set.init(_: Sequence)
- 알기 전:
```
var selfNumbers: Set<Int> = []

for i in 1...10000 {
    selfNumbers.insert(i)
}
```

- 알고난 후:
```
var selfNumbers = Set.init(1...10000)
```

### 중요한 점
- d(n)의 리턴값을 바탕으로 n을 찾을 방법이 있다면 좋겠지만, 찾지 못했다.
- 따라서 주어진 범위인 1~10000에서 d(1), d(2), ..., d(9999), d(10000)을 소거하는 방식으로 진행했다.
- 처음에는 셀프넘버 자체를 찾고 싶어 시간을 조금 낭비했는데, 천재적인 방법을 찾는 것보다는 시간 안에 푸는 게 중요하므로 빠르게 다른 방법을 찾아보자.

### 기타
- 제출시간 기준, 본프와 10초 차이 😁


---

## 11월 3주차

### 레벨
[티어전][바드🏅, 민쏜] 곱셈 / 브론즈3 / 8분

### 참가자

[bard](https://github.com/bar-d)
[minsson](https://github.com/minsson) 🏅 

### 문제 풀이

**문제 설명**

(세 자리 수) × (세 자리 수)의 각 자릿수별 곱셈 결과를 print하는 문제


```swift
func answer_BOJ_곱셈_2588() {
    let num1 = readLine()!
    let num2 = readLine()!
    
    let splitedNum2 = Array(num2)
    
    for i in stride(from: splitedNum2.count - 1, through: 0, by: -1) {
        print(Int(num1)! * Int(String(splitedNum2[i]))!)
    }

    print(Int(num1)! * Int(num2)!)
}

/* 처음 제출한 코드
 let num1 = readLine()!
 let num2 = readLine()!
 
 let splitedNum2 = Array(num2)
 
 let row3 = Int(num1)! * Int(String(splitedNum2[2]))!
 let row4 = Int(num1)! * Int(String(splitedNum2[1]))!
 let row5 = Int(num1)! * Int(String(splitedNum2[0]))!
 
 print(row3)
 print(row4)
 print(row5)
 print(Int(num1)! * Int(num2)!)
 */
```

### 알게된 점


**@inlinable public func stride<T>(from start: T, through end: T, by stride: T.Stride) -> StrideThrough<T> where T : Strideable**
**@inlinable public func stride<T>(from start: T, to end: T, by stride: T.Stride) -> StrideTo<T> where T : Strideable**

- through end는 해당 아규먼트를 포함한다. `1...3`과 같다.
- to end는 해당 아규먼트를 포함한다. `1..<3`과 같다.

- by는 어떤 규칙으로 할 건지를 나타냄

/// - Parameters:
///   - start: The starting value to use for the sequence. If the sequence
///     contains any values, the first one is `start`.
///   - end: An end value to limit the sequence. `end` is an element of
///     the resulting sequence if and only if it can be produced from `start` 
///     using steps of `stride`.
///   - stride: The amount to step by with each iteration. A positive `stride`
///     iterates upward; a negative `stride` iterates downward.
/// - Returns: A sequence from `start` toward, and possibly including, `end`. 
///   Each value in the sequence is separated by `stride`.

- 알기 전:
```
 let row3 = Int(num1)! * Int(String(splitedNum2[2]))!
 let row4 = Int(num1)! * Int(String(splitedNum2[1]))!
 let row5 = Int(num1)! * Int(String(splitedNum2[0]))!
 
 print(row3)
 print(row4)
 print(row5)
```

- 알고난 후:
```
    for i in stride(from: splitedNum2.count - 1, through: 0, by: -1) {
        print(Int(num1)! * Int(String(splitedNum2[i]))!)
    }
```

### 중요한 점
- 딱히 없음

### 기타
- 제출시간 기준, 30초 차이로 졌다 🥲
