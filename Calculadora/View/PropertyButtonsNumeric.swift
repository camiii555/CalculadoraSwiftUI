//
//  PropertyButtonsNumeric.swift
//  Calculadora
//
//  Created by MacBook J&J  on 24/01/22.
//

import SwiftUI

struct PropertyButtonsNumeric: View {
    let num: String
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 70, height: 70)
                .foregroundColor(Color(red: 36 / 255 , green: 36 / 255, blue: 36 / 255))
            Text(num)
                .foregroundColor(.white)
                .font(.title)
        }
    }
}

