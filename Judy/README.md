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

### [문자열 밀기](https://github.com/Judy-999/algorithm-study-in-swift/commit/17380477756cabfabd9bbe351d1219ca19eb2baf)
- 엣지 케이스 생각하기 - 이미 문자열과 동일한 경우를 생각하지 못했다
<br>

### [삼각형의 조건](https://github.com/Judy-999/algorithm-study-in-swift/commit/17380477756cabfabd9bbe351d1219ca19eb2baf)
- (a, b)인 두 변이 있을 때 삼각형의 한 변(c)이 될 수 있는 두 가지 경우
(a > b)
1) a가 가장 긴 변인 경우
a < b + c && b < a

2) c가 가장 긴 변인 경우
c < a + b 

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

### [가장 가까운 글자](https://github.com/Judy-999/algorithm-study-in-swift/commit/fa74e43a889f2fd67489098bd1fd3c4cacdcfec3)
- 아직 문제 푼 사람이 많지 않아서 정답률이 낮은 듯하다
- 정렬 알고리즘 공부가 도움이 되는 것 같다
- from부터 to 이전까지 by를 적용하는 메서드를 이용하면 뒤에서부터 반복할 
```swift
for j in stride(from: i-1, to: -1, by: -1) 
```
<br>

### [햄버거 만들기](https://github.com/Judy-999/algorithm-study-in-swift/commit/35ad279c2fe798fa9101c44575f18621476892aa)
- 문제를 제대로 잘못 이해해서 아주 오래걸렸다 
- 배열을 `while`로 돌면서 앞으로 4자리를 비교하고 빼는 방식으로 했는데 새로운 배열에 넣으면서 `suffix`를 이용해 뒤에를 비교하고 빼는 방법이 좋을 듯하다
- 배열에서 특정 인덱스 범위를 삭제하고 싶다면 `removeSubrange(1..<4)`이런 메서 사용할 수 있다

<br>

---

# 백준 
## SILVER 2
### [마지막 팩토리얼 수](https://github.com/Judy-999/algorithm-study-in-swift/commit/bba4765be804e242822ecacdfa5b2e393143c94d)
- 브론즈 2의 팩토리얼과 유사하다 해서 풀었는데 코드가 거의 동일하고 오히려 더 쉬웠다
- 입력 숫자가 범위가 더 커져서 `sum %= 1000000`한 숫자를 가지고 계산하도록 함
<br>

## BRONZE 1
### [초콜릿 자르기](https://github.com/Judy-999/algorithm-study-in-swift/commit/097f6d80e5e7397b19e66a06eb37f6655fb3eff4)
- 직사각형인 경우를 생각하지 않고 어렵게 생각했는데 생각해보니 단순한 문제였다
- BRONZE 1이라고 괜히 더 어려운 무언가 있을거라 예상한 것 같아서 문제 난이도는 생각하지말고 풀어야겠다

<br>

## BRONZE 2
### [파일 완전 삭제](https://github.com/Judy-999/algorithm-study-in-swift/commit/46a66930db87a362b1dd630b9f0acc51df28d47b)
- 입력받은 값이 짝수인지만 확인하면 됨
- 별로 BRONZE 2 같진 않음
<br>

### [팩토리얼](https://github.com/Judy-999/algorithm-study-in-swift/commit/ac3e986b52c67297452bfc078bd58b044a5e9f13)
- 웬만한 숫자가 넘어가면 숫자가 너무 커져서 팩토리얼 수를 구할 수 없음
- 마지막 숫자만 알고 싶은 것이니 일정 숫자만 가지고 있고 10으로 나눈 나머지를 구함 -> `sum %= 10000`으로 10000으로 나눈 나머지만 가지도록 함
- 숫자의 0이 아닌 맨 마지막 숫자를 알고 싶을 때
```swift
while result == 0 {
    sum /= 10
    result = sum % 10
}
```
<br>

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

### [배수 찾기](https://github.com/Judy-999/algorithm-study-in-swift/commit/99c61ad374b5e3b96357359362d08944724c0949)
- 단순하게 배수인지 확인하면 돼서 어렵지 않았다.
- 출력을 잘 확인하자(.을 안 적어서 틀림)
<br>

### [삼각형 분류](https://github.com/Judy-999/algorithm-study-in-swift/commit/711d7a060432a1427e0e87ba9861e49de113c922)
- 출력형을 잘못 써서, `!`를 잘못 붙여서, `import Foundation`을 안해줘서 무려 바보같이 세 번을 틀려버렸다
- 문제는 간단해도 출력형과 다른 것들을 신경쓰자
- 제일 긴 변이 다른 두 변의 합보다 길면 삼각형이 될 수 없다
- 이등변을 찾는 것 보다 다른 조건을 모두 찾고 나머진 모두 이등변으로 하는게 쉽다 (쉬운 조건들을 찾고 아니면 나머지로 하자)
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
<br>

## 12월 1주차

### 레벨

[PGS] LEVEL 0 최빈값 구하기

### 참가자

[Finnn](https://github.com/finnn1) 🏅<br>
[Judy](https://github.com/Judy-999) 

### 문제 풀이

**문제 설명**
최빈값은 주어진 값 중에서 가장 자주 나오는 값을 의미합니다. 정수 배열 `array`가 매개변수로 주어질 때, 최빈값을 `return` 하도록 `solution` 함수를 완성해보세요. 최빈값이 여러 개면 `-1`을 `return` 합니다.
> 

```swift
// 주디
func solution(_ array:[Int]) -> Int {
    var dictionary: [Int: Int] = [:]
    
    for number in array {
        if let count = dictionary[number] {
            dictionary.updateValue(count + 1, forKey: number) 
        } else {
            dictionary.updateValue(1, forKey: number) 
        }
    } 
    
    var max = 0
    var maxKey = 0
    var sameNumber = 0
    
    for count in dictionary {
        if max <= count.value {
            if max == count.value {
              sameNumber = max
            }
            
            maxKey = count.key
            max = count.value
        }
    }
    
    
    return sameNumber == max ? -1 :  maxKey
}
```

```swift
// 핀
func solution(_ array:[Int]) -> Int {
    var intDic: [Int: Int] = [:]
    
    array.forEach {
        if let count = intDic[$0] {
            intDic[$0] = count + 1
        } else {
            intDic[$0] = 1
        }
    }
    
    let sorted = intDic.sorted { $0.1 > $1.1 }
    
    if sorted.count > 1 {
        if sorted[0].value == sorted[1].value {
            return -1
        }
    }
    
    return sorted[0].key
}
```

### 알게된 점
- [Dictionary(grouping:by:)](https://developer.apple.com/documentation/swift/dictionary/init(grouping:by:)) -> 특정 key로 그룹(배열)으로 묶어 딕셔너리로 만들어주는 코드가 있다
- 핀과 주디는 천재다 🐰

### 중요한 점
- 고차함수를 쓰면 코드를 대폭 줄일 수 있다..! 🎉
- 티어전 전 날에는 술을 먹지 말자

### 기타
- 레벨 0도 어렵다 🥲
<br>

## 12월 2주차

### 레벨

[PGS] LEVEL 1 시저 암호

### 참가자

[보리사랑](https://github.com/yusw10)
[Judy](https://github.com/Judy-999) 🏅
[Finnn1](https://github.com/Finnn1)

### 문제 풀이

**문제 설명**
> 알파벳 문자열에서 일정한 거리만큼 뒤에 있는 알파벳으로 변경하기
> 예시 "a B z", 4 => "e F d"
> - 빈 칸은 그대로 빈 칸으로 두기
> - 대소문자가 섞여있음
> - z에서는 다시 a로 돌아오기


```swift
func solution(_ s:String, _ n:Int) -> String {
    let a = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var result = ""
    
    for str in s {
        if str == " " {
            result += " "
            continue
        }
        
        if let index = a.firstIndex(of: String(str)) {
            if index + n < a.count {
                result += a[index + n]
            } else {
                result += a[index + n - a.count]
            }
        } else {
            let lowerIndex = String(str).lowercased()
            let index = a.firstIndex(of: lowerIndex)!
            
            if index + n < a.count {
                result += a[index + n].uppercased()
            } else {
                result += a[index + n - a.count].uppercased()
            }
        }
    }
    
    return result
}
```

### 알게된 점
- 문자열 index를 다루는건 어려우니 배열로 하는게 편하다
- 대문자로 바꾸기 - `uppercased()`, 소문자로 바꾸기 - `lowercased()`

### 중요한 점
- 하드코딩은 휴먼에러를 발생시킨다(알파벳 하나만 잘못되면 다 틀린다)
- 유니코드를 잘 다루면 더 쉬웠을 것 같다

### 기타
- 하드코딩으로라도 풀리는게 어디..!
<br>

## 12월 3주차

### 레벨

[POJ] LEVEL 2 스킬트리

### 참가자
[웡빙](https://github.com/wongbingg) 🏅<br>
[Derrick](https://github.com/derrickkim0109)<br>
[Judy](https://github.com/Judy-999) <br>

### 문제 풀이

**문제 설명**
> 문자열로 된 `스킬트리 순서`와 문자열 배열(여러 `스킬트리`)을 받았을 때, 가능한 스킬트리의 개수를 반환하기
> ex) "CBD",	["BACDE", "CBADF", "AECB", "BDA"] => 2

```swift
func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var dictionary: [Character: Int] = [:]
    var numbers: [Int] = []
    var i = 0
    var count = 0
    
    for skillNumber in skill {
        dictionary[skillNumber] = i
        i += 1
    }
    
    for tree in skill_trees {
        for char in tree {
            if let skill = dictionary[char] {
              numbers.append(skill)
            }
        }

        if Array(0..<numbers.count) == numbers {
            count += 1
        }
        
        numbers.removeAll()
    }

    return count
}
```

### 알게된 점
- 딕셔너리를 사용했는데 `firstIndex`로 바로 할 수 있다
- `prefix`를 사용하는 방법도 있다

### 중요한 점
- 조건을 복잡하게 따지는 것은 오히려 틀린 결과를 만들 수 있다
- 조건을, 특히 엣지 케이스를 잘 생각하자
- `1`차이인 것을 확인하려 했는데 그냥 `Array(0..<count)`와 같은지 비교하면 된다

### 기타
- 괜히 복잡하게 생각하지 말고 아이디어만 실행하자
<br>

## 12월 4주차

### 레벨

[PGS] LEVEL 0 특이한 정렬

### 참가자

[Bard](https://github.com/bar-d) <br>
[Judy](https://github.com/Judy-999) 🏅

### 문제 풀이

**문제 설명**
> 정수 n을 기준으로 n과 가까운 수부터 정렬하기. 이때 거리가 같다면 더 큰 수가 앞에 오도록 배치.<br>
> ex) [1, 2, 3, 4, 5, 6], 4 =>    [4, 5, 3, 6, 2, 1]

```swift
func answer_PGS_특이한정렬(_ numlist:[Int], _ n:Int) -> [Int] {
    let sortedArray = numlist.sorted(by: <)
    let array = sortedArray.map {
        $0 > n ? $0 - n : n - $0
    }
    
    let index = array.firstIndex(of: array.min()!)!
    var result = [sortedArray[index]]
    var min = index - 1
    var max = index + 1
    
    while min >= 0 && max < numlist.count {
        if array[min] < array[max] {
            result.append(sortedArray[min])
            min -= 1
        } else if array[min] > array[max] {
            result.append(sortedArray[max])
            max += 1
        } else {
            if sortedArray[min] > sortedArray[max] {
                result.append(sortedArray[min])
                result.append(sortedArray[max])
            } else {
                result.append(sortedArray[max])
                result.append(sortedArray[min])
            }
            min -= 1
            max += 1
        }
    }
    
    if min >= 0 {
        result = result + Array(sortedArray[0...min]).reversed()
    }
    
    if max < sortedArray.count {
        result = result + Array(sortedArray[max..<sortedArray.count])
    }
    
    return result
}
```

### 알게된 점
- 절대값은 `abs`를 사용하면 된다
- sorted의 기준으로 튜플을 넣으면 앞쪽이 큰 우선순위로 비교된다 
- 딕셔너리에 sorted 할 때 클로저로 조건을 넣을 수 있다

### 중요한 점
- 효율성도 생각해보자
- 무려 한 줄로도 가능하다
```swift    
 return numlist.sorted(by: { (abs($0 - n), -$0) < (abs($1 - n), -$1) })
```

### 기타
- 쉬운거 해보려고 레벨 0 했는데 너무나 어려웠네요 🥲
<br>

## 12월 5주차

### 레벨

[PGS] LEVEL 0 나이 출력

### 참가자

[Bard](https://github.com/bar-d) <br>
[Judy](https://github.com/Judy-999) 🏅

### 문제 풀이

**문제 설명**
> 2022년을 기준 출생 연도를 return 

```swift
func answer_PGS_120820(_ age:Int) -> Int {
    return 2022 - age + 1
}

```

### 중요한 점
- 만나이가 아니므로 +1을 해줘야 한다

### 기타
- 마지막 날 기념으로 쉬운 문제를 풀어봤다!
