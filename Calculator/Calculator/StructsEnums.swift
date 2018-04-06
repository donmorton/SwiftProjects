//
//  StructsEnums.swift
//  Calculator
//
//  Created by Donald Morton on 5/25/17.
//  Copyright © 2017 Donald Morton. All rights reserved.
//  Test2

import Foundation

enum Operator: String{
    case add = "+"
    case subtract = "-"
    case times = "*"
    case divide = "/"
    case nothing = ""
}

enum Calculation: String{
    case enteringNum = "enteringNum"
    case newNumStarted = "newNumStarted"
}
