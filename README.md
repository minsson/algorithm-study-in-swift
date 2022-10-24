# 백준

## 실버

### BOJ

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

