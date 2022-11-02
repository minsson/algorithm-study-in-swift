# 프로그래머스 

## Level 0
### 1. [점의 위치 구하기](https://github.com/Judy-999/algorithm-study-in-swift/commit/f8c6541ca727e7761cb65c92cd716f55578a7690)
- x의 양수 판별 + y의 양수 판별
- 두 번의 조건문이면 해결
<br>

## Level 1

### 1. [부족한 금액 더하기](https://github.com/Judy-999/algorithm-study-in-swift/commit/10496966b0366d5d1b21731167607e8fb6c14491)
- 연속된 숫자의 배열 만들기
  - `let nums = Array(1...3) // [1, 2, 3]`
- 1부터 n배가 되는 값의 합 
  - 1*p + 2*p + 3*p + ... + n*p 
  = (1+2+...+n)p 
  = **p\*(n\*(n+1)/2)**
<br>

### 2. [내적](https://github.com/Judy-999/algorithm-study-in-swift/commit/44144384e83561a7e9885d904ea518f7b4b305ea)
- `zip([1, 2, 3], [4, 5, 6]).map(*).reduce(0, +)`
    - `zip`에서 튜플로 하나씩 꺼내지 않고 바로 `map`을 사용하면 간편하다
<br>

### 3. [콜라 문제](https://github.com/Judy-999/algorithm-study-in-swift/commit/5403f8e800bbbb49b16cfd085ccf2943294ce4cd)
- 처음 작성 
```swift
while total >= a {
  remainder = total % a 
  total = (total / a) * b
  sum += total 
  total += remainder
}
```
- 간략하게 수정
```swift
while total >= a {
  sum += (total / a) * b
  total = (total / a) * b + total % a 
}
```
- 처음에는 생각의 흐름 그대로 짜느라 오히려 복잡했는데 정리하면 더 간편하게 작성할 수 있다

<br>

## 10월 4주차

### 레벨

[PGS] Lv.1 약수의 개수와 덧셈

### 참가자

[Kiwi](https://github.com/kiwi1023) <br>
[Judy](https://github.com/Judy-999) 🏅 

### 문제 풀이

**문제 설명**

두 정수 left와 right가 매개변수로 주어집니다. left부터 right까지의 모든 수들 중에서, 약수의 개수가 짝수인 수는 더하고, 약수의 개수가 홀수인 수는 뺀 수를 return 하도록 solution 함수를 완성해주세요.

```swift
import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var count = 0
    var sum = 0
    
    for i in left...right {
        count = 0
        
        for j in 1...i {
            if i % j == 0 {
                count += 1
            } 
        }
        
        count % 2 == 0 ? (sum += i) : (sum -= i)
    }
    
    return sum
}
```

### 알게된 점
`floor(sqrt(Double(number))) == sqrt(Double(number))`
-> 제곱근의 소수점이 없으면 약수의 개수가 홀수 아니면 짝수이다

### 중요한 점
- `count`(=약수 개수)와 같이 반복문에서 다시 사용되는 변수는 0으로 초기화하는 것을 잊지 말기
- 반복문 속의 반복문이 있거나 조건문이 합쳐있을 때 조심하기
- 고차함수의 활용도 염두에 두자

### 기타

주디가 잘함.
주디 압승
