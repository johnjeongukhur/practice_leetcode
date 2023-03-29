//
//  main.swift
//  practice_leetcode
//
//  Created by John Hur on 2023/03/29.
//

/*
 21. Merge Two Sorted Lists
 
 You are given the heads of two sorted linked lists list1 and list2.

 Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.

 Return the head of the merged linked list.

 Example 1:
 
 Input: list1 = [1,2,4], list2 = [1,3,4]
 Output: [1,1,2,3,4,4]
 
 로직
 1. 새로운 ListNode를 생성하고, 결과를 저장할 변수와 현재 작업 중인 노드를 초기화합니다.
 2. 두 개의 LinkedList에서 현재 작업 중인 노드를 초기화합니다.
 3. while 루프를 이용하여, current1과 current2 노드를 비교하면서 작은 값을 결과 LinkedList에 추가합니다.
 4. currentNode 변수에 작업이 끝난 노드를 저장합니다.
 5. while 루프가 종료되면, 남은 노드가 있는 LinkedList를 결과 LinkedList에 추가합니다.
 6. 첫 번째 노드는 빈 노드이므로, 결과 LinkedList의 다음 노드를 반환합니다.
*/

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0;
        self.next = nil;
    }
    
    public init(_ val: Int) {
        self.val = val;
        self.next = nil;
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val;
        self.next = next;
    }
}

let list1 = ListNode(1)
list1.next = ListNode(2)
list1.next = ListNode(4)

let list2 = ListNode(1)
list2.next = ListNode(3)
list2.next = ListNode(4)


func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    // 새로운 ListNode를 생성하고, 결과를 저장할 변수와 현재 작업중인 노드를 초기화 합니다.
    let result: ListNode? = ListNode()
    var currentNode: ListNode? = result
    
    // 두 개의 리스트에서 현재 작업 중인 노드를 초기화합니다.
    var current1: ListNode? = list1
    var current2: ListNode? = list2
    
    // current1과 current2 노드를 비교하면서 작은 값을 결과 리스트에 추가합니다.
    while current1 != nil && current2 != nil {
        if current1?.val ?? 0 < current2?.val ?? 0 {
            // 작은 값이 list1에 있는 경우
            currentNode?.next = current1
            current1 = current1?.next
        }
        else {
            // 작은 값이 list2에 있는 경우
            currentNode?.next = current2
            current2 = current2?.next
        }
        // 작업이 끝난 노드를 currentNode에 저장합니다.
        currentNode = currentNode?.next
    }
    
    // 남은 노드가 있는 리스트를 결과 리스트에 추가합니다.
    if current1 == nil {
        currentNode?.next = current2
    }
    else {
        currentNode?.next = current1
    }
    
    // 첫 번째 노드는 빈 노드이므로, 결과 리스트의 다음 노드를 반환합니다.
    return result?.next
}

mergeTwoLists(list1, list2)
