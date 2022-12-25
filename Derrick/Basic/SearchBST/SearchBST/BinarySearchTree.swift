//
//  BinarySearchTree.swift
//  SearchBST
//
//  Created by Derrick kim on 2022/12/25.
//

import Foundation

final class BinarySearchTree<T: Comparable> {
    var root: Node<T>?

    func insert(_ data: T) {
        guard let root = self.root else {
            return self.root = Node(data: data)
        }

        var currentNode = root

        while true {
            if currentNode.data > data {
                guard let nextNode = currentNode.left else {
                    return currentNode.left = Node(data: data)
                }
                currentNode = nextNode
            } else {
                guard let nextNode = currentNode.right else {
                    return currentNode.right = Node(data: data)
                }
                currentNode = nextNode
            }
        }
    }

    func search(from data: T) -> Bool {
        if root == nil { return false }

        var currentNode = root
        while let node = currentNode {
            if node.data == data {
                return true
            }
            if node.data > data {
                currentNode = node.left
            } else {
                currentNode = node.right
            }
        }
        return false
    }

    func deleteBST(_ data: T) {
        var currentNode = root

        while let node = currentNode,
              node.data != data {
            if node.data > data {
                currentNode = node.left
            } else {
                currentNode = node.right
            }
        }

        guard let root = self.root else {
            return self.root = Node(data: data)
        }
    }

    func drawDiagram() {
        print(diagram(for: self.root))
    }

    private func diagram(for node: Node<T>?,
                         _ top: String = "",
                         _ root: String = "",
                         _ bottom: String = "") -> String {
        guard let node = node else {
            return root + "nil\n"
        }
        if node.left == nil && node.right == nil {
            return root + "\(node.data)\n"
        }
        return diagram(for: node.right, top + " ", top + "┌──", top + "│ ")
        + root + "\(node.data)\n"
        + diagram(for: node.left, bottom + "│ ", bottom + "└──", bottom + " ")
    }
}


