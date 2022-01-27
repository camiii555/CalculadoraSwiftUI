//
//  ViewModel.swift
//  Calculadora
//
//  Created by MacBook J&J  on 24/01/22.
//

import Foundation
import CoreData
import Combine
import SwiftUI

class ViewModel: ObservableObject {
    @Published var show = false
    @Published var screen = "0"
    @Published var temp: Double = 0
    @Published var total: Double = 0
    @Published var operations: operationType = .none
    @Published var process = ""
    private var numInt: Int = 0
    private var numDouble: Double = 0
    private let kMaxValue: Double = 999999999
    private let KminValue = 0.00000001
    
    private let KmaxNums = 9
    let symbolPoint = Locale.current.decimalSeparator
    
    enum operationType {
        case none, addtrasction, substraction, multiplication, division, porcent
    }
    
    func clear(){
        if temp != 0 {
            temp = 0
        } else {
            total = 0
            screen = "0"
            process = ""
        }
    }
    
    func setScreenNumbers(num: String){
        if screen == "0" {
            screen = num
        } else {
            if screen.count < 9 {
                screen.append(contentsOf: num)
            }
        }
    }
    
    func setSymbolPoint(){
        if !screen.contains(".") {
            screen.append(contentsOf: symbolPoint!)
        }
    }
    
    func changeSign() {
        if screen.contains(".") {
            numDouble = Double(screen)!
            numDouble = numDouble * -1
            screen = String(numDouble)
        } else {
            numInt = Int(screen)!
            numInt = numInt * -1
            screen = String(numInt)
        }
    }
    
    func result() {
        temp = Double(screen)!
        switch operations {
        case .none:
            break
        case .addtrasction:
            total = total + temp
            break
        case .substraction:
            total = total - temp
            break
        case .multiplication:
            total = total * temp
            break
        case .division:
            total = total / temp
            break
        case .porcent:
            temp = temp / 100
            total = temp
            break
        }

        
        if total >= KminValue && total <= kMaxValue {
            screen = String(total)
        }
    }
}
