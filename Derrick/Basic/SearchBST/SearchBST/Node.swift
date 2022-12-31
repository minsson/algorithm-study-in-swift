//
//  Node.swift
//  SearchBST
//
//  Created by Derrick kim on 2022/12/25.
//

import Foundation

//이진 탐색 트리 자체가 데이터를 비교해가면서 탐색을 하기 때문에,
//비교가 가능한 데이터만 저장할 수 있게 Comparable 프로토콜을 채택한 제네릭으로 선언했음!
//또한, 데이터는 항상 존재해야 하므로 Non-Optional Type임!
//트리의 왼쪽, 오른쪽 Child Node는 존재할 수도, 안 할 수도 있으니 Optional Type임!

final class Node<T: Comparable> {
    var data: T
    var left: Node?
    var right: Node?

    init(data: T) {
        self.data = data
    }
}
