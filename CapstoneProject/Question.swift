//
//  Question.swift
//  CapstoneProject
//
//  Created by Marvellous Dirisu on 12/07/2022.
//

import Foundation

struct Question {
    var text : String
    var answers : [Answer]
}

struct Answer {
    let text : String
    let correct : Bool
}
