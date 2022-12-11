//
//  main.swift
//  friendsFourBlocks
//
//  Created by Derrick kim on 2022/11/30.
//

import Foundation

//func solution(_ height:Int,
//              _ width:Int,
//              _ board:[String]) -> Int {
//    //board안의 스트링을 map으로 변환시킴
//    var boards = board.map{ $0.map{ String($0) } }
//    //boards의 값을 저장해줄 변수
//    var boardsCopy = boards
//    //삭제되었는지 안되었는지 확인할 변수
//    var isDeleted = true
//    //삭제된 칸을 세어줄 변수
//    var answer = 0
//
//    while isDeleted {
//    isDeleted = false
//    answer = 0
//    //4개 이상 같은 퍼즐이 있다면 빈칸으로 바꿔주기
//    for column in stride(from: height-1,
//                         to: 0,
//                         by: -1) {
//        //boards는 같다면 빈칸으로 바뀌므로 미리 저장해둔 boardsCopy의 i-1,i로 해준다.
//        let currentValue = boardsCopy[column-1]
//        let previousValue =  boardsCopy[column]
//        for row in 1..<width {
//            //만약 빈칸도 아니고 위 아래 칸의 j번쨰 글자가 같다면
//            if currentValue[row] != "" && currentValue[row] == previousValue[row]  {
//                //위 아래 칸 j-1번째칸과 현재의 j-1,j번째 글자가 같다면
//                if currentValue[row-1] == previousValue[row-1] && currentValue[row] == currentValue[row-1]{
//                    isDeleted = true
//                    //같은 4개의 문자를 빈칸으로 만들어줌
//                    (boards[column][row],boards[column-1][row],boards[column][row-1],boards[column-1][row-1])  =  ("","","","")
//                }
//            }
//        }
//    }
//        //바뀐 boards를 저장해줌
//        boardsCopy = boards
//
//        //첫번째 세로줄부터
//        for row in 0..<width {
//            //빈칸을 세어줄 변수
//            var emptyCount = 0
//            //배열을 거꾸로부터 확인
//            for column in stride(from: height-1,
//                                 to: -1,
//                                 by: -1){
//                //boards의 문자가 빈칸이 아니면
//                if boards[column][row] != "" {
//                    //빈칸이 하나 이상 있다면
//                    if emptyCount != 0 {
//                    //빈칸만큼 위 배열로 값을 넘겨준다.
//                    boards[column+emptyCount][column] = boardsCopy[column][row]
//                    //위로 올려준 값은 빈칸으로 만들어줌
//                    boards[column][row] = ""
//                    }
//                }else{
//                    //boards[b][i] 비어있다면 emptyCount를 1증가시켜줌
//                    emptyCount += 1
//                }
//            }
//            //빈칸들을 차례로 더해줌
//            answer += emptyCount
//        }
//        //빈칸을 채어준 boards를 다시 저장해줌
//        boardsCopy = boards
//    }
//    return answer
//}


print(solution(4, 5, ["CCBDE", "AAADE", "AAABF", "CCBBF"]))


// # 1 board를 테이블 모양으로 변경한다.
// 현재 board 모양
// C C B D E
// A A A D E
// A A A B F
// C C B B F
func convertTable(_ m:Int,
                  _ n:Int,
                  _ board: [[String]]) -> [String] {
    var table: [String] = []

    for row in 0..<n {
        var tmp = ""
        for column in 0..<m {
            tmp += board[column][row]
        }
        table.append(tmp)
    }

    return table
}

// # 2 재귀적으로 지워질 블록을 디텍션해서 지워주는 함수
func crash(_ n:Int,
           _ m:Int,
           _ table: [String]) -> Int {

    var tableArray = table.map{ $0.map{ String($0) } }
    var crashArray: [(Int, Int)] = []

    // #탐지
    for row in 0..<n - 1 {
        for column in 0..<m - 1 {
            let standardPoint = tableArray[row][column]

            if standardPoint == tableArray[row][column + 1],
               standardPoint == tableArray[row + 1][column],
               standardPoint == tableArray[row + 1][column + 1] {
                crashArray += [(row, column + 1), (row + 1, column), (row, column + 1), (row + 1, column + 1)]
            }
        }
    }

    print(crashArray.filter{ $0 == $1 })


    return 0
}

func solution(_ m:Int,
              _ n:Int,
              _ board:[String]) -> Int {

    var boards = board.map{ $0.map{ String($0) }}

    var count = 0
    var table = convertTable(m, n, boards)

    count = crash(n, m, table)

    return count
}
