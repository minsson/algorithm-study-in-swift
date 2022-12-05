# 프로그래머스 

## Level 1

### [정수 내림차순으로 배치하기]

```swift
func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted(by: >)))!
}
```
### [나머지가 1이 되는 수 찾기]

```swift
func solution(_ n:Int) -> Int {
    for i in 2..<n {
        if n%i == 1 {
            return i
        }
    }
    return 0
}
```
