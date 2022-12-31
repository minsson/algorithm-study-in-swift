# 백준

## 브론즈

### [BOJ_A플러스B_1000](9990a3834d3022254d887f6fe90cfd9f0e040b89)
- 함수 내에서 작성하는 것이 아니라 강제 옵셔널 추출 필요함

### [BOJ_새싹_25083]
### 문제 풀이
```swift
func answer_BOJ_25083() {
    print(#"""
         ,r'"7
r`-_   ,'  ,/
 \. ". L_r'
   `~\/
      |
      |
"""#
    )
}
```
### 알게된 점
- print 구문 앞 뒤에 #을 넣어주면 특수문자를 알아서 처리헤 줌
[문자열 다루는 법 공식문서](https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html)
# 티어전
## 10월 4주차
### 브론즈
### 참가자
[바드](https://github.com/bar-d)🏅  
[수꿍](https://github.com/Jeon-Minsu)  

### 문제 풀이
```
import Foundation

func answer_BOJ_사칙연산_10869() {
    let input = readLine()!
    let problem = input.components(separatedBy: " ")
    let leftNumber = Int(problem[0])!
    let rightnumber = Int(problem[1])!
    
    print(leftNumber + rightnumber)
    print(leftNumber - rightnumber)
    print(leftNumber * rightnumber)
    print(leftNumber / rightnumber)
    print(leftNumber % rightnumber)
}
```
### 알게된 점
- readLine 변수명을 readLine과 똑같이 하면 컴파일 에러가 남
### 중요한 점

### 기타

## 11월 4주차

### 레벨

[PGS] LEVEL 0 겹치는 선분의 길이

### 참가자

[Bard](https://github.com/bar-d) 
[Judy](https://github.com/Judy-999) 🏅

### 문제 풀이

**문제 설명**
> 처음과 끝을 Int로 가진 배열 3개 중 겹치는 선분의 개수를 구하기
> (겹치는 부분은 중복 없이 한 번만 카운트)
> ex) [[0, 5], [3, 9], [1, 10]] ==> 8

```swift
func answer_PGS_120876(_ lines:[[Int]]) -> Int {
    let firstLine = [lines[0][0], lines[0][1]]
    let secondLine = [lines[1][0], lines[1][1]]
    let thirdLine = [lines[2][0], lines[2][1]]
    
    let firstArray: [Int] = Array(firstLine[0]...firstLine[1])
    let secondArray: [Int] = Array(secondLine[0]...secondLine[1])
    let thirdArray: [Int] = Array(thirdLine[0]...thirdLine[1])
    
    var answer = 0
    
    let minNumber = min(min(firstLine[0], secondLine[0]), thirdLine[0])
    let maxNumber = max(max(firstLine[1], secondLine[1]), thirdLine[1])
    
    for i in minNumber...maxNumber - 1 {
        if firstArray.contains(i) && secondArray.contains(i) &&
            firstArray.contains(i + 1) && secondArray.contains(i + 1) {
            answer += 1
            continue
        }
        
        if secondArray.contains(i) && thirdArray.contains(i) &&
            secondArray.contains(i + 1) && thirdArray.contains(i + 1) {
            answer += 1
            continue
        }
        
        if thirdArray.contains(i) && firstArray.contains(i) &&
            thirdArray.contains(i + 1) && firstArray.contains(i + 1) {
            answer += 1
            continue
        }
    }
    
    return answer
}
```

### 알게된 점
- 겹치는 선분을 구하는 것이니 `1`과 `2`가 동시에 포함되어도 하나만 카운트해야 한다
- 주디는 천재다

### 중요한 점
- 중복해서 카운트하면 안되니 만약 하나라도 해당되면 `continue`로 다음 반복으로 넘어가야 한다

### 기타
- 레벨 0도 어렵다

# 알고리즘 티어전
## 12월 4주차

### 레벨

[PGS] LEVEL 0 특이한 정렬

### 참가자

[Bard](https://github.com/bar-d) 
[Judy](https://github.com/Judy-999) 🏅

### 문제 풀이

**문제 설명**
> 정수 n을 기준으로 n과 가까운 수부터 정렬하기. 이때 거리가 같다면 더 큰 수가 앞에 오도록 배치.
> ex) [1, 2, 3, 4, 5, 6], 4 =>	[4, 5, 3, 6, 2, 1]

```swift
func answer_PGS_120880(_ numlist:[Int], _ n:Int) -> [Int] {
    var result: [Int] = []
    var numberListDictionary: [Int: Int] = [:]
    var distance = 0
    
    for i in 0...numlist.count - 1 {
        if numlist.distance(from: n, to: numlist[i]) < 0 {
            distance = -(numlist.distance(from: n, to: numlist[i]))
        } else {
            distance = numlist.distance(from: n, to: numlist[i])
        }
        numberListDictionary[numlist[i]] = distance
    }
    
    result = numberListDictionary.sorted {
        if $0.value == $1.value {
            if $0.key > $1.key {
                return $0.key > $1.key
            }
        }
        
        return $0.value < $1.value
    }.map {
        $0.key
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
- 주디는 천재다