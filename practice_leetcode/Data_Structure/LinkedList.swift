////
////  main.swift
////  practice_leetcode
////
////  Created by John Hur on 2023/03/24.
////
//
//import Foundation
//
//class LinkedListNode<T: Equatable> {
//    var value: T
//    var next: LinkedListNode?
//    
//    init(value: T) {
//        self.value = value
//    }
//}
//
//class LinkedList<T: Equatable> {
//    var head: LinkedListNode<T>?
//    var tail: LinkedListNode<T>?
//    
//    // 삽입
//    func append(_ value: T) {
//        let newNode = LinkedListNode(value: value)
//        if let tailNode = tail {
//            tailNode.next = newNode
//            tail = newNode
//        } else {
//            head = newNode
//            tail = newNode
//        }
//    }
//    // 검색
//    func search(_ value: T) -> LinkedListNode<T>? {
//        var currentNode = head
//        while let node = currentNode {
//            if node.value == value {
//                return node
//            }
//            currentNode = node.next
//        }
//        return nil
//    }
//    
//}
//
//var list1 = LinkedListNode(value: 2)
//list1.next = LinkedListNode(value: 5)
//list1.next?.next = LinkedListNode(value: 10)
//
//var list2 = LinkedList<Int>()
//list2.append(1)
//list2.append(2)
//list2.append(3)
//list2.append(4)
//
//if let value = list2.search(3) {
//    print("답 \(value)")
//} else {
//    print("찾는 결과가 없습니다.")
//}
//
//print("\(list1)")
//
//class
