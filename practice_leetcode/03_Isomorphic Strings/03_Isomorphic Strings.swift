////  main.swift
////  practice_leetcode
//
//import Foundation
//
///*
// Given two strings s and t, determine if they are isomorphic.
//
// Two strings s and t are isomorphic if the characters in s can be replaced to get t.
//
// All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.
//
// Input: s = "egg", t = "add"
// Output: true
//
// Input: s = "foo", t = "bar"
// Output: false
//
// Input: s = "paper", t = "title"
// Output: true
// */
//
///*
//How to solve
// */
//
//let s = "foo",  t = "bar"
//
//
//func isIsomorphic(_ s: String, _ t: String) -> Bool {
//    guard s.count == t.count else {
//        return false
//    }
//
//    var sToT = [Character: Character]()
//    var tToS = [Character: Character]()
//
//    for (sChar, tChar) in zip(s, t) {
//        if let mappedTChar = sToT[sChar], mappedTChar != tChar {
//            return false
//        }
//
//        if let mappedSChar = tToS[tChar], mappedSChar != sChar {
//            return false
//        }
//
//        sToT[sChar] = tChar
//        tToS[tChar] = sChar
//    }
//
//    return true
//}
//
//
//isIsomorphic(s, t)
