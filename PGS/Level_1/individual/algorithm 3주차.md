# 프로그래머스 

## Level 1

### [자연수 뒤집어 배열로 만들기]

```swift
func solution(_ n:Int64) -> [Int] {
    var arr = String(n).map { Int(String($0))!}
    
    return arr.reversed()
}
```

> Note❗️
> String(n).map { String($0)!}
> 정수 문자열 배열 반환방법

### [정수 제곱근 판별]

```swift
func solution(_ n:Int64) -> Int64 {
    for i in 1...n {
        if i*i == n { return (i+1)*(i+1) }
        if n < i*i { return -1 }
    }
    return 0
}
```

> Note❗️
> let t = Int64(sqrt(Double(n)))
