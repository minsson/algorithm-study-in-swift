# 알고리즘 티어전 
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
