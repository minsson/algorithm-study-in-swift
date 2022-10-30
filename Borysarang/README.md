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
