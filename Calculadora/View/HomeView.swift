//
//  HomeView.swift
//  Calculadora
//
//  Created by MacBook J&J  on 24/01/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var resultado = ViewModel()
    var body: some View {
        ZStack{
            VStack{
                let sizeScreen = Int(UIScreen.main.bounds.width)
                Text(resultado.resultado)
                    .font(.custom("Courier", size: 60)).bold()
                    .frame(width: (CGFloat(sizeScreen) - 30) , height: 200, alignment: .trailing)
                    .foregroundColor(.white)
                // primera hilera de botones
                HStack{
                    Button {
                        resultado.resultado = "0"
                    } label: {
                        PropertyButtons(text: "AC")
                    }
                    
                    Button {
                        print("+/-")
                    } label: {
                        PropertyButtons(text: "+/-")
                    }
                    
                    Button {
                        print("%")
                    } label: {
                        PropertyButtons(text: "%")
                    }
                    
                    Button {
                        print("÷")
                    } label: {
                        PropertyButtonsOperators(text: "÷")
                    }.padding()
                }.frame(height: 80)
                
                // Segunda hilera de botones
                
                HStack{
                    
                    Button {
                        resultado.setDataScreen(num: "7")
                    } label: {
                        PropertyButtonsNumeric(num: "7")
                    }
                    
                    Button {
                        resultado.setDataScreen(num: "8")
                    } label: {
                        PropertyButtonsNumeric(num: "8")
                    }
                    
                    Button {
                        resultado.setDataScreen(num: "9")
                    } label: {
                        PropertyButtonsNumeric(num: "9")
                    }
                    
                    Button {
                        print("x")
                    } label: {
                        PropertyButtonsOperators(text: "x")
                    }.padding()
                    
                }.frame(height: 80)
                
                // Tercera hilera de botones
                
                HStack{
                    
                    Button {
                        resultado.setDataScreen(num: "4")
                    } label: {
                        PropertyButtonsNumeric(num: "4")
                    }
                    
                    Button {
                        resultado.setDataScreen(num: "5")
                    } label: {
                        PropertyButtonsNumeric(num: "5")
                    }
                    
                    Button {
                        resultado.setDataScreen(num: "6")
                    } label: {
                        PropertyButtonsNumeric(num: "6")
                    }
                    
                    Button {
                        print("-")
                    } label: {
                        PropertyButtonsOperators(text: "-")
                    }.padding()
                    
                }.frame(height: 80)
            
                // Cuarta hilera de botones
                
                HStack{
                    
                    Button {
                        resultado.setDataScreen(num: "1")
                    } label: {
                        PropertyButtonsNumeric(num: "1")
                    }
                    
                    Button {
                        resultado.setDataScreen(num: "2")
                    } label: {
                        PropertyButtonsNumeric(num: "2")
                    }
                    
                    Button {
                        resultado.setDataScreen(num: "3")
                    } label: {
                        PropertyButtonsNumeric(num: "3")
                    }
                    
                    Button {
                        print("+")
                    } label: {
                        PropertyButtonsOperators(text: "+")
                    }.padding()
                    
                }.frame(height: 80)
                
                // Quinta hilera de botones
                HStack{
                    
                    Button {
                        print("0")
                    } label: {
                        PropertyButtonsNumericCero(num: "0")
                    }
                    
                    Button {
                        resultado.setDataScreen(num: ".")
                    } label: {
                        PropertyButtonsNumeric(num: ".")
                    }
                    
                    Button {
                        print("+")
                    } label: {
                        PropertyButtonsOperators(text: "+")
                    }.padding()
                    
                }.frame(height: 80)
                
            }.preferredColorScheme(.dark)
        }
    }
}




