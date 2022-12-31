//
//  main.swift
//  Lotto-s-hightest_rank_lowest_rank
//
//  Created by Derrick kim on 2022/12/20.
//

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    if lottos.sorted(by: <) == win_nums.sorted(by: <) {
        return [1, 1]
    }

    let standardLottoRank: [Int: Int] = [6: 1, 5: 2, 4: 3, 3: 4, 2: 5]
    let correctNumberCount = lottos.filter{ $0 != 0 }.filter{     win_nums.contains($0)
    }.count
    let minimumRank = standardLottoRank[correctNumberCount] ?? 6
    let zeroAmount = lottos.filter{ $0 == 0 }.count
    let maximumRank = standardLottoRank[zeroAmount + correctNumberCount] ?? 6

    return [maximumRank, minimumRank]
}

print(solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]))
print(solution([0, 0, 0, 0, 0, 0], [38, 19, 20, 40, 15, 25]))
print(solution([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35]))
