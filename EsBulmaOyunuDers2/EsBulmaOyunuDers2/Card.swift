//
//  Card.swift
//  Concentration
//
//  Created by Cumali Han on 18.04.2018.
//  Copyright © 2018 Cumali Han. All rights reserved.
//

import Foundation
struct Card{
    var isFaceUp = false
    var isMatched = false
    var identifier : Int
    
    static var identifierFactory = 0
    
    static func getIniqueİdentifier() -> Int{
        identifierFactory += 1
        return identifierFactory
        
    }
    
    init(){
        self.identifier = Card.getIniqueİdentifier()
    }
}

