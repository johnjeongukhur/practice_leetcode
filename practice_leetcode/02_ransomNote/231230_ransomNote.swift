////
////  main.swift
////  practice_leetcode
////
////  Created by John Hur on 2022/12/15.
////
//
//import Foundation
//import Combine
//import SwiftUI
//
///*
// 만약, magazine으로 ransomNote를 작성할 수 있다면 true
//      아니라면, false
//Given two strings ransomNote and magazine, return true if ransomNote can be constructed by
//using the letters from magazine and false otherwise.
//Each letter in magazine can only be used once in ransomNote.
// */
//
//// 1. 답 - false
////var ransomNote = "a"
////var magazine = "b"
//
//// 2. 답 - false
////var ransomNote = "aa"
////var magazine = "ab"
//
//// 3. 답 - true
////var ransomNote = "aa"
////var magazine = "aab"
//
//// 4. 답 - false
////var ransomNote = "fihjjjjei"
////var magazine = "hjibagacbhadfaefdjaeaebgi"
//
//// 5. 답 - false
//var ransomNote = "ihgg"
//var magazine = "ch"
//
//
//func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
//    // String을 Cha 배열로 생성
//    let ransomNoteChar = Array(ransomNote)
//    let magazineChar = Array(magazine)
//    // 중복값 제거
//    let setRansomNote = Array(Set(Array(ransomNote)))
//    let setMagazine = Array(Set(Array(magazine)))
//
//    // Key == 문자, Value == 해당 문자 개수만큼 카운트
//    // Ransom
//    var tempDictRan = [String: Int]()
//    // Magazine
//    var tempDictMag = [String: Int]()
//
//    for i in 0..<setRansomNote.count {
//        var tempCnt: Int = 0
//
//        for j in 0..<ransomNoteChar.count {
//            if String(ransomNoteChar[j]) == String(setRansomNote[i]) {
//                tempCnt += 1
//            }
//        }
//        tempDictRan.updateValue(tempCnt, forKey: String(setRansomNote[i]))
//    }
//
////    for cha in ransomNote {
////        tempDictRan[cha] =
////    }
//
//
//    for i in 0..<setMagazine.count {
//        var tempCnt: Int = 0
//
//        for j in 0..<magazineChar.count {
//            if String(magazineChar[j]) == String(setMagazine[i]) {
//                tempCnt += 1
//            }
//        }
//        tempDictMag.updateValue(tempCnt, forKey: String(setMagazine[i]))
//    }
//
//    let ran = Array(tempDictRan)
//    let mag = Array(tempDictMag)
//
//    var isConstructed: Bool = false
//
//    for (rk, rv) in ran {
//
//        for (mk, mv) in mag {
//            if rk == mk {
//                if rv <= mv {
//                    isConstructed = true
//
//                } else if rv > mv {
//                    isConstructed = false
//                    break
//                }
//            }
//        }
//    }
//    
//
//    return isConstructed
//}
//
//canConstruct(ransomNote, magazine)
//
