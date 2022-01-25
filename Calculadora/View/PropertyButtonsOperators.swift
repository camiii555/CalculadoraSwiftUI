//
//  PropertyButtonsOperators.swift
//  Calculadora
//
//  Created by MacBook J&J  on 24/01/22.
//

import SwiftUI

struct PropertyButtonsOperators: View {
    let text : String
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 70, height: 70)
                .foregroundColor(Color(red: 255 / 255 , green: 128 / 255, blue: 0 / 255))
            Text(text)
                .foregroundColor(.white)
                .font(.largeTitle)
                .bold()
        }
    }
}

