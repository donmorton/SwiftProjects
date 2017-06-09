//
//  Util.swift
//  BackToTheFuture
//
//  Created by Donald Morton on 6/8/17.
//  Copyright © 2017 Donald Morton. All rights reserved.
//

import Foundation

class Util{

    func getCurrentYear() -> String{
        let date = Date()
        let calendar = Calendar.current
        return String(calendar.component(.year, from:date))
        
    }

    func getLetterAtIndex(str: String, location: Int) -> String{
        let index = str.index(str.startIndex, offsetBy: location)
        return String(str[index])
    }
    
    func getCurrentTime() -> String{
        let date = Date()
        let formatter = DateFormatter()
        
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        
        let timeString = formatter.string(from: date)
        return timeString
    }
    
    func getRandomYear() -> String{
        return String(arc4random_uniform(8999) + 1000)
    }

}
