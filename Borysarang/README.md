###### tags: `README`

# 백준

## BOJ

### 실버

<details>
<summary>다리 놓기</summary>
<div markdown="1">

### [다리놓기](https://github.com/yusw10/algorithm-study-in-swift/blob/main/Borysarang/Algorithm_Study_in_Swift/Algorithm_Study_in_Swift/BOJ/SILVER/BOJ_%EB%8B%A4%EB%A6%AC%EB%86%93%EA%B8%B0_1010.swift)

- 정수론
  - N개의 출발지에서 M개의 도착지로 가는 다리의 개수가 총 몇가지가 가능한지에 대한 문제
  - 이중 다리가 가로지르는 형태는 존재할 수 없음. 즉 순서가 상관이 없음
  - M개의 도착지중 N개의 출발지로부터 다리를 놓는 경우의 수를 구하는문제 
  - 즉 조합
- 다이나믹 프로그래밍
  - M, 즉 도착지는 출발지보다 항상 같거나 많다.
  - M의 최대값은 30
  - 조합 공식에 따르면 최대 30!까지 가능함
  - 30!의 계산을 여러번 진행하면 굉장히 복잡함. 즉 중간까지의 계산과정을 저장할 필요가 있음
  - 각 팩토리얼까지의 계산 결과를 저장할 배열을 하나 선언하여 중복 계산과정을 제거함
  
</div>
</details>

### 브론즈

<details>
<summary>시험 성적</summary>
<div markdown="1">

### [시험 성적](https://github.com/yusw10/algorithm-study-in-swift/blob/Borysarang/Borysarang/Algorithm_Study_in_Swift/Algorithm_Study_in_Swift/BOJ/BRONZE/BOJ_TestGrade_9498.swift)

- 입력받아 조건문으로 출력문을 정한다.
  
</div>
</details>

<details>
<summary>달팽이는 올라가고싶다.</summary>
<div markdown="1">

### [달팽이는 올라가고싶다.](https://github.com/yusw10/algorithm-study-in-swift/blob/Borysarang/Borysarang/Algorithm_Study_in_Swift/Algorithm_Study_in_Swift/BOJ/BRONZE/BOJ_2869.swift)

- 전진과 후진을 하루의 이동거리로 잡는다.
- 마지막 날은 후진을 하지 않으므로 하루의 거리는 전진치로 잡는다.
- 하루 이동거리가 전진한 거리에 정확하게 떨어지지 않을 경우 하루를 추가로 가야한다.
  
</div>
</details>

---

## PGS

### 브론즈

<details>
<summary>핸드폰 번호 가리기</summary>
<div markdown="1">

### [핸드폰 번호 가리기](https://github.com/yusw10/algorithm-study-in-swift/blob/main/Borysarang/Algorithm_Study_in_Swift/Algorithm_Study_in_Swift/PGS/BRONZE/PGS_%ED%95%B8%EB%93%9C%ED%8F%B0%EB%B2%88%ED%98%B8%EA%B0%80%EB%A6%AC%EA%B8%B0.swift)

- 문자열의 substring을 통해 뒤의 4글자만을 제외하고는 * 처리한다.
- 다만 Swift는 문자열의 직접적 서브스트링을 지원하지 않고 String.Index라는 구조체를 통해 배열 인텍스에 접근토록한다.
  
</div>
</details>


<details>
<summary>점프와 텔레포트</summary>
<div markdown="1">

### [점프와 텔레포트](https://github.com/yusw10/algorithm-study-in-swift/blob/Borysarang/Borysarang/Algorithm_Study_in_Swift/Algorithm_Study_in_Swift/PGS/LEVEL2/PGS_jumpAndTeleport_12980.swift)

- 그리디 문제인듯하다. 
- 곱하기 2 자체는 절대 손해가 아니므로 최대한으로 사용이 되어야 한다고 생각했다.
- 떄문에 나눗기 2를 무한정 진행하고 홀수일 떄 마다 1씩 뺴면서 카운트를 진행시켰다.
  
</div>
</details>

---
# 티어전

<details>
<summary>10월 4주차 - 콜라츠 추측</summary>
<div markdown="1">

### [콜라츠 추측](https://school.programmers.co.kr/learn/courses/30/lessons/12943?language=swift) - 레벨 1 (브론즈)

### 참가자
[보리사랑](https://github.com/yusw10)
[핀](https://github.com/finnn1) 🏅

### 문제 풀이
콜라츠 추측 알고리즘 그대로를 함수로 빼주었다.

### 기타
함수로 빼는것이 알고리즘 실행시간에 영향을 주는가?

</div>
</details>


<details>
<summary>11월 1주차 - A+B-8 </summary>
<div markdown="1">

### [A+B-8](https://www.acmicpc.net/problem/11022) - 레벨 1 (브론즈5)

### 참가자
[보리사랑](https://github.com/yusw10)
[수꿍](https://github.com/Jeon-Minsu) 🏅

### 문제 풀이
그대로 입력받아 출력하면 되는 문제

### 기타
의외로 16분이나 걸렸다. 이유는 간단했다...
백준은 실행이 되는 코드를 작성해야하는데 나는 함수로 만들고 함수를 실행을 안시켜서...
프로그래머스랑 병행하며 하니 햇갈리는것같다.

</div>
</details>



<details>
<summary>11월 2주차 - 사장님 도박은 재미로 하셔야 합니다. </summary>
<div markdown="1">

### [BOJ] 브론즈 4 사장님 도박은 재미로 하셔야 합니다

### 참가자
[Borysarang](https://github.com/yusw10) 🏅
[Judy](https://github.com/Judy-999)

### 문제 풀이

**문제 설명**

-1이 입력될때까지 입력되는 모든 수를 더하여 출력한다.

```swift
func problem_23795() -> Int {
    var count = 0
    var input = 0
    while true {
        input = Int(readLine()!)!
        if input == -1 {
            break
        }
        count += input
    }
    return count
}
```

### 알게된 점

### 중요한 점
- 평소에 백준이나 프로그래머스 둘 다 풀어봐야겠다 (한 곳에서만 푸니 다른 사이트는 어렵다..)
    - 백준은 readLine으로 받아서 print() 해야 함 
    - 프로그래머스는 파라미터로 받아서 return 해야 함

### 기타
- 다음엔 더 높은 문제를 풀어도 될듯..!
- 너무 쉬운 문제를 풀면 도움이 많이 안되는것같다.

</div>
</details>


<details>
<summary>11월 3주차 - 주사위게임 </summary>
<div markdown="1">


### [BOJ] [브론즈 3 주사위 게임(10103)](https://www.acmicpc.net/problem/10103)

### 참가자

[Borysarang](https://github.com/yusw10) 
[Judy](https://github.com/Judy-999) 🏅

### 문제 풀이

**문제 설명**
> 두 사람이 100점에서 시작해서 이긴 사람의 숫자 만큼 점수를 잃는 게임 (같은 숫자가 나오면 무시)

```swift
import Foundation

func answer_주사위게임_10103() {
//    let testCount =  1
    let testCount =  Int(readLine()!)!
    
    var firstResult = 100
    var secondResult = 100
    
    for _ in 0..<testCount {
        let round = readLine()!.components(separatedBy: " ").map{Int($0)!}
        
        if round[0] > round[1] {
            secondResult -= round[0]
        } else if round[0] < round[1] {
            firstResult -= round[1]
        } else {
            continue
        }
    }
    
    print(firstResult)
    print(secondResult)
}
```

### 알게된 점
- 입력값이 여러줄로 입력되고 각 케이스 별로 여러 값이 입력될 수 있음.
    - components 및 compactMap으로 정수 입력에 대한 처리를 미리하면좋다.

### 중요한 점
- 중요한 점은 아니지만 알고리즘에선 언래핑에 많은 노력을 할 필요는 없을 것 같다

### 기타
- 한 번씩 이기고 졌으니 보리-주디는 실력이 비슷하다!

    
    </div>
</details>
