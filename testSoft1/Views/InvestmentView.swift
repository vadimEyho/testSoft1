//
//  InvestmentView.swift
//  testSoft1
//
//  Created by Вадим Эйхольс on 07.12.2023.
//

import SwiftUI

struct InvestmentView: View {
    @ObservedObject var controller: TradeController

    var body: some View {
        VStack {
            
            HStack {
                
                
                Button(action: {
                    controller.decreaseInvestment()
                }) {
                    HStack {
                        Image(systemName: "minus.circle")
                        
                    }
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                
                Spacer()
                
                Text("\(controller.investment)")
                    .font(.title)
                    .padding()
                    
                    .onTapGesture {
                        // Действие при нажатии на таймер
                    }

                Spacer()
               

                Button(action: {
                    controller.increaseInvestment()
                }) {
                    HStack {
                        Image(systemName: "plus.circle")
                        
                    }
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct InvestmentView_Previews: PreviewProvider {
    static var previews: some View {
        InvestmentView(controller: TradeController())
    }
}

