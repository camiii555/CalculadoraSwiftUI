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
    @Published var resultado  = "0"
    @Published var fecha = Date()
    
    func setDataScreen(num: String){
        if resultado == "0" {
            resultado = num
        } else {
            resultado += num
        }
    }
}
