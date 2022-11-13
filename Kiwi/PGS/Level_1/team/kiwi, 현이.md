# 티어전

# 11월 2주차
### 레벨
[PGS] Lv.1 삼총사

### 참가자
[Kiwi](https://github.com/kiwi1023) 

[현이](https://github.com/seohyeon2) 🏅

### 문제 풀이
```swift
func answer_PGS_삼총사_131705() {
    var result = 0
    for i in (0...number.count-3) {
        for j in (i+1...number.count-2) {
            for k in (j+1...number.count-1) {
                if number[i] + number[j] + number[k] == 0 {
                    result += 1
                }
            }
        }
    }
    return result
}
```
### 알게된 점
- 순열과 조합 개념

### 중요한 점 
- range 오류가 나지 않게 범위 잘 정해야 함

### 기타

- 백준의 단계별 풀이로 개념 정리 필요(kiwi)
