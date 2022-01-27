//
//  HomeView.swift
//  Calculadora
//
//  Created by MacBook J&J  on 24/01/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var model = ViewModel()
    let sizeScreen = Int(UIScreen.main.bounds.width)
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    VStack{
                        Text(model.process)
                            .font(.custom("Arial", size: 20))
                            .frame(width: (CGFloat(sizeScreen) - 30), alignment: .topTrailing)
                            .foregroundColor(.white)
                        
                        Text(model.screen)
                            .font(.custom("Arial", size: 70)).bold()
                            .frame(width: (CGFloat(sizeScreen) - 30) , height: 120, alignment: .bottomTrailing)
                            .foregroundColor(.white)
                        }
                    // primera hilera de botones
                    HStack{
                        Button{
                            model.clear()
                        } label: {
                            if model.screen != "0" {
                                PropertyButtons(text: "C")
                            } else {
                                PropertyButtons(text: "AC")
                            }
                        }
                        
                        Button {
                            model.changeSign()
                        } label: {
                            PropertyButtons(text: "+/-")
                        }
                        
                        Button {
                            if model.temp != 0 {
                                model.result()
                            } else {
                                model.result()
                                model.operations = .porcent
                            }
                            model.screen = "0"
                            model.process = String(format: "%1.f", model.total)
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
                            model.setScreenNumbers(num: "7")
                        } label: {
                            PropertyButtonsNumeric(num: "7")
                        }
                        
                        Button {
                            model.setScreenNumbers(num: "8")
                        } label: {
                            PropertyButtonsNumeric(num: "8")
                        }
                        
                        Button {
                            model.setScreenNumbers(num: "9")
                        } label: {
                            PropertyButtonsNumeric(num: "9")
                        }
                        
                        Button {
 
                        } label: {
                            PropertyButtonsOperators(text: "x")
                        }.padding()
                        
                    }.frame(height: 80)
                    
                    // Tercera hilera de botones
                    
                    HStack{
                        
                        Button {
                            model.setScreenNumbers(num: "4")
                        } label: {
                            PropertyButtonsNumeric(num: "4")
                        }
                        
                        Button {
                            model.setScreenNumbers(num: "5")
                        } label: {
                            PropertyButtonsNumeric(num: "5")
                        }
                        
                        Button {
                            model.setScreenNumbers(num: "6")
                        } label: {
                            PropertyButtonsNumeric(num: "6")
                        }
                        
                        Button {
                            if model.temp != 0 {
                                model.result()
                            } else {
                                model.operations = .substraction
                                model.result()
                            }
                            model.screen = "0"
                            model.process = String(format: "%1.f", model.total)
                        } label: {
                            PropertyButtonsOperators(text: "-")
                        }.padding()
                        
                    }.frame(height: 80)
                
                    // Cuarta hilera de botones
                    
                    HStack{
                        
                        Button {
                            model.setScreenNumbers(num: "1")
                        } label: {
                            PropertyButtonsNumeric(num: "1")
                        }
                        
                        Button {
                            model.setScreenNumbers(num: "2")
                        } label: {
                            PropertyButtonsNumeric(num: "2")
                        }
                        
                        Button {
                            model.setScreenNumbers(num: "3")
                        } label: {
                            PropertyButtonsNumeric(num: "3")
                        }
                        
                        Button {
                           if model.temp != 0 {
                                model.result()
                           } else {
                                model.operations = .addtrasction
                                model.result()
                            }
                            model.screen = "0"
                            model.process = String(format: "%1.f", model.total)
                            
                        } label: {
                            PropertyButtonsOperators(text: "+")
                        }.padding()
                        
                    }.frame(height: 80)
                    
                    // Quinta hilera de botones
                    HStack{
                        
                        Button {
                            model.setScreenNumbers(num: "0")
                        } label: {
                            PropertyButtonsNumericCero(num: "0")
                        }
                        
                        Button {
                            model.setSymbolPoint()
                        } label: {
                            PropertyButtonsNumeric(num: model.symbolPoint!)
                        }
                        
                        Button {
                            model.result()
                        } label: {
                            PropertyButtonsOperators(text: "=")
                        }.padding()
                        
                    }.frame(height: 80)
                    
                }.preferredColorScheme(.dark)
                    .toolbar {
                        Button {
                          
                        } label: {
                            Image(systemName: "clock")
                                .foregroundColor(.white)
                                .font(.body)
                        }
                    } .sheet(isPresented: $model.show){
                        Results()
                    }
            }
        }
    }
}




