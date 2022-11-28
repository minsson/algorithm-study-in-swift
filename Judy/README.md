# 프로그래머스 

## Level 0
### [점의 위치 구하기](https://github.com/Judy-999/algorithm-study-in-swift/commit/f8c6541ca727e7761cb65c92cd716f55578a7690)
- x의 양수 판별 + y의 양수 판별
- 두 번의 조건문이면 해결
<br>

### [치킨 쿠폰](https://github.com/Judy-999/algorithm-study-in-swift/commit/1673ee2444842d6c3e69772cd2247c6ebef5afe1)
- 10개를 사면 쿠폰하나를 주는 문제
- 풀고 보니 콜라 문제랑 흡사
<br>

### [다음에 올 숫자](https://github.com/Judy-999/algorithm-study-in-swift/commit/0f4bab97d2596af927ea66478d9df79096ea4032)
```swift
func pow(
    _ x: Decimal,
    _ y: Int
) -> Decimal
```
- `Int`로 제곱근 값을 얻고 싶다면 x, y를 `Double`로 변한한 후 다시 결과값을 `Int`로 변환하면 된다
<br>

## Level 1

### [부족한 금액 더하기](https://github.com/Judy-999/algorithm-study-in-swift/commit/10496966b0366d5d1b21731167607e8fb6c14491)
- 연속된 숫자의 배열 만들기
  - `let nums = Array(1...3) // [1, 2, 3]`
- 1부터 n배가 되는 값의 합 
  - 1*p + 2*p + 3*p + ... + n*p 
  = (1+2+...+n)p 
  = **p\*(n\*(n+1)/2)**
<br>

### [내적](https://github.com/Judy-999/algorithm-study-in-swift/commit/44144384e83561a7e9885d904ea518f7b4b305ea)
- `zip([1, 2, 3], [4, 5, 6]).map(*).reduce(0, +)`
    - `zip`에서 튜플로 하나씩 꺼내지 않고 바로 `map`을 사용하면 간편하다
<br>

### [콜라 문제](https://github.com/Judy-999/algorithm-study-in-swift/commit/5403f8e800bbbb49b16cfd085ccf2943294ce4cd)
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

### [행렬의 덧셈](https://github.com/Judy-999/algorithm-study-in-swift/commit/5403f8e800bbbb49b16cfd085ccf2943294ce4cd)
- 2차원 배열의 덧셈이라 `zip`을 두 번 사용해서 해결했다
```swift
 return zip(arr1, arr2).map { zip($0,$1).map { $0 + $1 } }
 ```
 - `zip`과 함께 `map`dmf 사용하면 더 간편하다
<br>

---

# 백준 

## BRONZE 3
### [신기한 수](https://github.com/Judy-999/algorithm-study-in-swift/commit/b4cb3b76d9e0dbd5cff4794deab42b8fe51d8087)
```swift
 let sum = String(num).compactMap { Int(String($0)) }.reduce(0, +)
```
- 처음에 고차함수를 사용해서 하니 통과는 되었으나 큰 수에서는 시간 초과가 발생했다
- 큰 수의 타입 변환은 시간이 많이 걸림을 유의하자
```swift
 var i = 1000000
 
while i >= 1 {
    if number / i >= 1 {
    sum += number / i
    number %= i
    }

    i /= 10
}
```
- 제한이었던 1000000부터 반복문으로 직접 확인하는 방법으로 통과했다
<br>

### [한다 안한다](https://github.com/Judy-999/algorithm-study-in-swift/commit/5d0f0fe07872066e01006fda948edec5965d0d4d)
- 문제를 잘못 이해해서 괜한 시간을 많이 버렸다
- 백준은 항상 내가 입력해준다는 점을 잊지말자
- 앞뒤 숫자를 비교하는 방법으로 `removeFirst`와 `removeLast`를 사용했다
<br>

### [문문문](https://github.com/Judy-999/algorithm-study-in-swift/commit/d53aa03af01f9d96c73817f5d23197c09a8527ad)
- 사실 애초에 5가 넘으면 불가능한 문제였다
- 반복문과 배열을 같이 사용할 때 현재 인덱스 값을 어떻게 이용할지 잘 생각해보기
<br>

---

# 알고리즘 티어전
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
<br>

## 11월 1주차

### 레벨

[PGS] Lv.1 숫자 짝꿍

### 참가자

[Derrick](https://github.com/derrickkim0109) <br>
[Judy](https://github.com/Judy-999) 🏅 

### 문제 풀이

**문제 설명**
> 문자열 X, Y에서 공통된 숫자로만 이루어진 가장 큰 수 찾기
(0으로만 이뤄진 경우 "0", 공통 숫자가 없는 경우 "-1")


```swift
import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var numberList: [String] = []
    var correctList: String = ""

    for number in 0...9 {
        if X.contains(String(number)) && Y.contains(String(number)) {
            numberList.append(String(number))
        }
    }
    
    for overlapNumber in numberList {
        let xx = X.filter { 
            String($0) == overlapNumber 
        }
        
        let yy = Y.filter { 
            String($0) == overlapNumber 
        }
        
        xx.count <= yy.count ? (correctList += String(xx)) : (correctList += String(yy))
    }
    
    var result = correctList.map{ String($0) }.sorted(by: >).joined() 
    
    if let zero = Int(result), zero == 0 {
        result = "0"
    }
    
    return result == "" ? "-1" : result
}
```

### 알게된 점

- array를 먼저 구하기에는 `3 ≤ X, Y의 길이(자릿수) ≤ 3,000,000` 까지 for문이 돌아 시간효율이 좋지않았다. 
- 큰 수 또는 긴 문자열의 형변환은 생각보다 시간을 많이 잡아먹는다


### 중요한 점
- 공통된 숫자를 찾을 때는 주어진 문자열에 집중하지 말고 0부터 9까지만 반복문을 돌기 
- 코드의 효율성을 높이기 위해서 for문을 많이 사용하면 안된다.

### 기타
- 주디 승
<br>

## 11월 2주차

### 레벨

[BOJ] 브론즈 4 사장님 도박은 재미로 하셔야 합니다

### 참가자

[Borysarang](https://github.com/yusw10) 🏅<br>
[Judy](https://github.com/Judy-999)

### 문제 풀이

**문제 설명**

-1이 입력될때까지 입력되는 모든 수를 더하여 출력한다.

```swift
var money = readLine()
var sum = 0

while money != "-1" {
    guard let inputMoney = money, let number = Int(inputMoney) else {
        break
    }

    sum += number
    money = readLine()
}

print(sum)
```

### 알게된 점
- 단순히 반복문으로 덧셈만 해준거라 크게 어렵지 않았다

### 중요한 점
- 평소에 백준이나 프로그래머스 둘 다 풀어봐야겠다 (한 곳에서만 푸니 다른 사이트는 어렵다..)
	- 백준은 readLine으로 받아서 print() 해야 함 
	- 프로그래머스는 파라미터로 받아서 return 해야 함

### 기타
- 다음엔 더 높은 문제를 풀어도 될듯..!
- 너무 쉬운 문제를 풀면 도움이 많이 안되는것같다.
<br>

## 11월 3주차

### 레벨

[BOJ] 브론즈 3 주사위 게임(10103)

### 참가자

[Borysarang](https://github.com/yusw10) <br>
[Judy](https://github.com/Judy-999) 🏅

### 문제 풀이

**문제 설명**
> 두 사람이 100점에서 시작해서 이긴 사람의 숫자 만큼 점수를 잃는 게임 (같은 숫자가 나오면 무시)

```swift
import Foundation

var chang = 100
var sang = 100

let roundNumber = Int(readLine() ?? "0") ?? 0

for _ in 1...roundNumber {
    let readNumber = readLine() ?? ""
    let numbers = readNumber.components(separatedBy: " ").compactMap { Int($0) }
    
    if numbers[0] > numbers[1] {
        sang -= numbers[0]
    } else if numbers[0] < numbers[1] {
        chang -= numbers[1]
    }
}

print(chang)
print(sang)
```

### 알게된 점
- 입력값이 여러줄로 입력되고 각 케이스 별로 여러 값이 입력될 수 있음.
	- components 및 compactMap으로 정수 입력에 대한 처리를 미리하면좋다.

### 중요한 점
- 중요한 점은 아니지만 알고리즘에선 언래핑에 많은 노력을 할 필요는 없을 것 같다

### 기타
- 한 번씩 이기고 졌으니 보리-주디는 실력이 비슷하다!
<br>

## 11월 4주차

### 레벨

[PGS] LEVEL 0 겹치는 선분의 길이

### 참가자

[Bard](https://github.com/bar-d) <br>
[Judy](https://github.com/Judy-999) 🏅

### 문제 풀이

**문제 설명**
> 처음과 끝을 Int로 가진 배열 3개 중 겹치는 선분의 개수를 구하기<br>
> (겹치는 부분은 중복 없이 한 번만 카운트)<br>
> ex) [[0, 5], [3, 9], [1, 10]] ==> 8

```swift
func solution(_ lines:[[Int]]) -> Int {
    let line1 = lines[0]
    let line2 = lines[1]
    let line3 = lines[2]
    let lineList1 = Array(line1[0]...line1[1])
    let lineList2 = Array(line2[0]...line2[1])
    let lineList3 = Array(line3[0]...line3[1])
    let minValue: Int = min(min(line1[0], line2[0]), line3[0])
    let maxValue: Int = max(max(line1[1], line2[1]), line3[1])
    var result = 0

    for i in minValue...(maxValue - 1) {
        if lineList1.contains(i) && lineList1.contains(i+1) &&
        lineList2.contains(i)  && lineList2.contains(i+1) {
            result += 1
            continue
        }
        
         if lineList3.contains(i) && lineList3.contains(i+1) &&
        lineList2.contains(i)  && lineList2.contains(i+1)  {
            result += 1
            continue
        }
        
          if lineList1.contains(i) && lineList1.contains(i+1) &&
        lineList3.contains(i)  && lineList3.contains(i+1)  {
            result += 1
            continue
        }
    }
    
    return result
}
```

### 알게된 점
- 겹치는 선분을 구하는 것이니 `1`과 `2`가 동시에 포함되어도 하나만 카운트해야 한다
- 주디는 천재다

### 중요한 점
- 중복해서 카운트하면 안되니 만약 하나라도 해당되면 `continue`로 다음 반복으로 넘어가야 한다

### 기타
- 레벨 0도 어렵다
