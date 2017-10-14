//
//  main.swift
//  removeSpecificCharacter
//
//  Created by HYOUNGSUN park on 10/13/17.
//  Copyright © 2017 HYOUNGSUN park. All rights reserved.
//

import Foundation

func reverseOrderOfwords (_ sentence: String) -> String{
    let fullSentence = sentence.components(separatedBy: " ")
    var newSentence = ""
    for i in 0...fullSentence.count - 1 {
        let word = fullSentence[i]
        if newSentence != "" {
            newSentence += " "
        }
        let reversedWord = String(word.characters.reversed())
        // not only it reverse the word, but also the custom function revoves a specific character
        newSentence += reversedWord.removeSpecificChracter()
    }
    return newSentence
}

extension String {
    func removeSpecificChracter() -> String {
        var updatedWords = self
        // remove specific characters below and returns an updated string
        for char in ["t", "o", "n", "s", "y"] {
            updatedWords = updatedWords.replacingOccurrences(of: char, with: "")
        }
        return updatedWords
    }
}


var sample = "Hi, my name is stanley, it was nice to talk to you. see you soon!"

print(reverseOrderOfwords(sample))
// ,iH m ema i ,ela i aw eci  kla  .u ee u !



