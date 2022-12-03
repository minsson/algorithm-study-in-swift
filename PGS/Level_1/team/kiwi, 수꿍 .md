## 11월 4주차

### 레벨

[PGS] Lv.1 행렬의 덧셈

### 참가자
 [수꿍](https://github.com/Jeon-Minsu)🏅
 [Kiwi](https://github.com/kiwi1023) 

### 문제 풀이

#### 문제 설명

행렬의 덧셈은 행과 열의 크기가 같은 두 행렬의 같은 행, 같은 열의 값을 서로 더한 결과가 됩니다. 2개의 행렬 arr1과 arr2를 입력받아, 행렬 덧셈의 결과를 반환하는 함수, solution을 완성해주세요.

```swift

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    for i in 0..<arr1.count {
        result.append([])
        for j in 0..<arr1[i].count {
            result[i].append(arr1[i][j] + arr2[i][j])
        }
    }
    return result
}

```
### 알게된 점

X

### 중요한 점

X

### 기타

X

