//
//  main.swift
//  reverseOrderWord
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
        newSentence += reversedWord
    }
    return newSentence
}

var sample = "Hello my name is Stanley. Nice to meet you!"

print(reverseOrderOfwords(sample))
// olleH ym eman si .yelnatS eciN ot teem !uoy
