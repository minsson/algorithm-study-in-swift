# 프로그래머스 

## Level 1

### [정수 내림차순으로 배치하기]

```swift
func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted(by: >)))!
}
```
