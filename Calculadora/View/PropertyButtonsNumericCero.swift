//
//  PropertyButtonsNumericCero.swift
//  Calculadora
//
//  Created by MacBook J&J  on 24/01/22.
//

import SwiftUI

struct PropertyButtonsNumericCero: View {
    let num: String
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 145, height: 70)
                .foregroundColor(Color(red: 36 / 255 , green: 36 / 255, blue: 36 / 255))
                .cornerRadius(100)
            Text(num)
                .foregroundColor(.white)
                .font(.title)
                .frame(alignment: .leading)
        }
    }
}
