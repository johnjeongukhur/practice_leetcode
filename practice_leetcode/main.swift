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

 
 
 */

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

let list1 = ListNode(1)
list1.next = ListNode(2)
list1.next = ListNode(4)

let list2 = ListNode(1)
list2.next = ListNode(3)
list2.next = ListNode(4)


func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    var result = ListNode()
    
    
    
    if let va = list1?.val {
        
    }
    
    return list1
}

mergeTwoLists(list1, list2)
