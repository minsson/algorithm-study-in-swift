# 알고리즘 티어전
## 11월 1주차

### 레벨

[PGS] Lv.1 숫자 짝꿍

### 참가자

[Derrick](https://github.com/derrickkim0109) 
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