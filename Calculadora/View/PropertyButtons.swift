//
//  PropertyButtons.swift
//  Calculadora
//
//  Created by MacBook J&J  on 24/01/22.
//

import SwiftUI

struct PropertyButtons: View {
    var text : String
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 70, height: 70)
                .foregroundColor(.gray)
            Text(text)
                .foregroundColor(.black)
                .font(.title)
        }
    }
}

