# 백준

## 브론즈 

### [모음의 개수](https://github.com/wongbingg/algorithm-study-in-swift/commit/58fc9c9baeb57b99c26e52f876730988c65ac2c9)

- while let 을 사용하여 옵셔널 바인딩을 해준 뒤, 해당 값을 이용해 break 조건을 걸어주었다. 
### [욱제](https://github.com/wongbingg/algorithm-study-in-swift/commit/699028e11b0dd715a842320774eddbb58b17c758)

- 간단한 제곱, 나누기를 활용한 문제였다

### [큰 수 A+ B](https://www.acmicpc.net/problem/10757)

- Int의 범위를 벗어나는 수 계산.. 1의자리 부터 더해주며 올림수를 따지며 문자열에 하나씩 추가 해주었다.

## 실버

### [색종이 만들기](https://www.acmicpc.net/problem/2630)

- 분할 정복 / 재귀 문제
- 쿼드트리 문제와 유사했다. 

### [좌표 압축](https://www.acmicpc.net/problem/18870)

- 정렬 , 값/ 좌표압축 문제

### [나는야 포켓몬 마스터 이다솜](https://www.acmicpc.net/problem/1620)

- 해시를 이용한 집합과 맵
- 딕셔너리를 활용하여 문제풀이를 했다.

### [최소힙](https://www.acmicpc.net/problem/1927)

- 우선순위 큐, 힙
- 힙 자료구조를 이용하여 최소힙을 구현 (블로그 참조)

### [막대기](https://www.acmicpc.net/problem/1094)

- 비트마스킹을 이용한 문제풀이

### [어린왕자](https://www.acmicpc.net/problem/1004)

- 두 점중 하나의 점을 포함하는 원이 만들어지면 count를 해주는 방식의 알고리즘을 작성했다. 
두 점 사이의 거리를 구하기 위해 루트((x1-x2)^2 + (y1-y2)^2) 공식을 이용했는데, 루트때문에 통과가 안됬었다.
루트를 사용하지 않고 계산하니 통과했따.

## 골드

### [토마토](https://www.acmicpc.net/problem/7576)

- 너비우선 탐색을 이용해 문제를 풀면 되었는데 탐색의 시작점이 여러곳일 수 있다는 것에서 어려웠다.
결론은 시작점들도 사용하는 큐에 순차적으로 넣어주면 되는 것이었다
- 처음에 큐를 LinkedList로 구현했는데 시간이 초과되어 DobleStack으로 변경하니 해결 되었다.

# 프로그래머스

## Level 0

### [순서쌍의 개수](https://school.programmers.co.kr/learn/courses/30/lessons/120836)
- n 이 1부터 n 까지의 숫자로 나눈 나머지가 존재하는지 확인했다. 나머지가 존재하지 않으면 나누어 떨어진다는 것이니 이를 카운트 해주었다.

## Level 2

### [주차 요금 계산](https://school.programmers.co.kr/learn/courses/30/lessons/92341)
- 빡센 구현문제 였다. 딕셔너리 두개를 활용하여 IN과 OUT일 때를 체크 해주었다. 또한 반올림을 위해 ceil이란 함수를 사용해봤다.
---

# 티어전
## 10월 4주차
<details>
    
### 브론즈 3
### 참가자
[웡빙](https://github.com/wongbingg) 🏅

[현이](https://github.com/seohyeon2)

### 문제 풀이
```swift
func answer_BOJ_부호_1247() {

    (1...3).forEach { _ in
        var overflow = 0
        var result = 0
        let n = Int(readLine()!)!
        (1...n).forEach { _ in
            let input = Int(readLine()!)!
            
            if result > 0 && input > 0 && input > Int.max - result {
                overflow += 1
                result = result - Int.max + input
            } else if result < 0 && input < 0 && input < -(Int.max + result) {
                overflow -= 1
                result = result + Int.max + input
            } else {
                result += input
            }
        }
        if overflow == 1 && result == -Int.max {
            print("0")
            return
        } else if overflow == -1 && result == Int.max {
            print("0")
            return
        } else if overflow == 1 && result > -Int.max && result < 0 {
            print("+")
            return
        } else if overflow == -1 && result < Int.max && result > 0 {
            print("-")
            return
        }
        showResult(result, overflow: overflow)
    }
    
    func showResult(_ result: Int, overflow: Int) {
        if overflow < 0 {
            print("-")
        } else if overflow > 0 {
            print("+")
        } else if result == 0 {
            print(0)
        } else if result < 0 {
            print("-")
        } else if result > 0 {
            print("+")
        }
    }
}
```
### 알게된 점
Int값의 범위인 -9223372036854775808 ~ 9223372036854775807 를 뛰어넘는 계산을 필요로할 수 있다는 것. 
### 중요한 점 
Int.max 의 값이 넘어가는 계산이 수행될 시 오류가 발생한다. 이를 피하기 위해 overflow 되는 값을 변수로 관리하여 예외 케이스들을 고려해주어야 한다.
### 기타
</details>
    

## 11월 1주차
<details>
    
### 브론즈 3
### 참가자
[웡빙](https://github.com/wongbingg) 🏅

[현이](https://github.com/seohyeon2)

### 문제 풀이

```swift
    func makeGrid() -> [[Int]] {
        var grid: [[Int]] = []
        (1...9).forEach { _ in
            let row = readLine()!.split(separator: " ").compactMap { Int($0) }
            grid.append(row)
        }
        return grid
    }

    func findMax(in grid: [[Int]]) -> Int {
        let flattedGrid = grid.flatMap { $0 }
        let maxValue = flattedGrid.max()!
        return maxValue
    }

    func findRC(at maxNum: Int, in grid: [[Int]]) -> (row: Int, column: Int) {
        for row in (0..<grid.count) {
            for col in (0..<grid[row].count) {
                if grid[row][col] == maxNum {
                    return (row + 1, col + 1)
                }
            }
        }
        return (0,0)
    }
    let grid = makeGrid()
    let maxValue = findMax(in: grid)
    let matrix = findRC(at: maxValue, in: grid)

    print(maxValue)
    print(matrix.row, matrix.column)
```

### 알게된 점
flatMap 을 사용하면 2차원 배열에서 1차원 배열로 바꿔줄 수 있다
### 중요한 점 
행렬의 개념
### 기타
</details>

## 11월 3주차

<details>
    
### 브론즈 3
### 참가자
[웡빙](https://github.com/wongbingg) 

[데릭](https://github.com/derrickkim0109)🏅

### 문제 풀이

```swift
 let list = ["aya", "ye", "woo", "ma"]

 func solution(_ babbling: [String]) -> Int {
     var count = 0

     for babble in babbling {
         var testBabble = babble
         testBabble = testBabble.replacingOccurrences(of: "aya", with: "1")
         testBabble = testBabble.replacingOccurrences(of: "ye", with: "2")
         testBabble = testBabble.replacingOccurrences(of: "woo", with: "3")
         testBabble = testBabble.replacingOccurrences(of: "ma", with: "4")
         if Int(testBabble) != nil, continuousCheck(in: testBabble) {
             count += 1
         }
     }
     return count
 }

 func continuousCheck(in str: String) -> Bool {
     var previous = ""
     for i in str {
         if previous == String(i) {
             return false
         }
         previous = String(i)
     }
     return true
 }
```

### 알게된 점

- 프로그래머스 환경 적응방법

### 중요한 점 

- 테스트케이스를 내가 추가할 수 있다
- 각 케이스별 결과를 개별적으로 확인할 수 있다. 

### 기타
</details>
