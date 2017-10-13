//
//  main.swift
//  palindrome
//
//  Created by HYOUNGSUN park on 10/11/17.
//  Copyright © 2017 HYOUNGSUN park. All rights reserved.

import Foundation


func isPalindrome(word: String) -> Bool {
    var charArray = [Character](word.characters)
    let length = charArray.count
    for i in 0..<length {
        if charArray[i] != charArray[length - i + -1] {
            return false
        }
    }
    return true
}

print(isPalindrome(word: "racecar"))
print(isPalindrome(word: "stars"))
print(isPalindrome(word: "kayak"))
print(isPalindrome(word: "hello"))
