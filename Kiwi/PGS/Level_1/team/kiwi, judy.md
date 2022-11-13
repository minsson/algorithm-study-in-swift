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
