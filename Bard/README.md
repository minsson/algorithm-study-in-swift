# 백준

## 브론즈

### [BOJ_A플러스B_1000](9990a3834d3022254d887f6fe90cfd9f0e040b89)
- 함수 내에서 작성하는 것이 아니라 강제 옵셔널 추출 필요함

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
