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

