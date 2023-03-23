////
////  main.swift
////  practice_leetcode
////
////  Created by John Hur on 2023/03/22.
////
//
///*
// Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
//
// A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).
//
//  
//
// Example 1:
//
// Input: s = "abc", t = "ahbgdc"
// Output: true
// Example 2:
//
// Input: s = "axc", t = "ahbgdc"
// Output: false
// */
//
///*
// 추가 예시
// 
// // 예시 3: s가 빈 문자열인 경우
// let example3 = (s: "", t: "ahbgdc")
// let result3 = isSubsequence(example3.s, example3.t)
// print(result3) // 예상 결과: true
//
// // 예시 4: t가 빈 문자열인 경우
// let example4 = (s: "abc", t: "")
// let result4 = isSubsequence(example4.s, example4.t)
// print(result4) // 예상 결과: false
//
// // 예시 5: s와 t가 모두 빈 문자열인 경우
// let example5 = (s: "", t: "")
// let result5 = isSubsequence(example5.s, example5.t)
// print(result5) // 예상 결과: true
//
// // 예시 6: s와 t가 동일한 문자열인 경우
// let example6 = (s: "abc", t: "abc")
// let result6 = isSubsequence(example6.s, example6.t)
// print(result6) // 예상 결과: true
// */
//
//// s = "acb", t = "ahbgdc"
//
//import Foundation
//
//let s = "acb", t = "ahbgdc"
//
//func isSubsequence(_ s: String, _ t: String) -> Bool {
////    let check = s.filter { value in
////        t.contains(value)
////    }
////    if s == check {
////        return true
////    }
////    return false
//    
//    var sIndex = s.startIndex
//    var tIndex = t.startIndex
//    while sIndex < s.endIndex && tIndex < t.endIndex {
//        if s[sIndex] == t[tIndex] {
//            sIndex = s.index(after: sIndex)
//        }
//        tIndex = t.index(after: tIndex)
//    }
//    return sIndex == s.endIndex
//
//}
//
//
//isSubsequence(s, t)
