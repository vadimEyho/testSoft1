//
//  TradeView.swift
//  testSoft1
//
//  Created by Вадим Эйхольс on 07.12.2023.
//


import SwiftUI

struct TradeView: View {
    @ObservedObject var controller = TradeController()

    var body: some View {
        NavigationView {
            VStack {
                Text("Balance: $10000")
                    .font(.title)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
                    .onTapGesture {
                        // Действие при нажатии на баланс
                    }

                WebView(url: URL(string: "https://www.tradingview.com/chart/?symbol=\(controller.selectedCurrencyPair)")!)
                    .id(UUID())
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)

                Button("Select Currency Pair") {
                    // Действие при нажатии на кнопку выбора валютной пары
                    controller.selectCurrencyPair("YOUR_NEW_CURRENCY_PAIR_HERE")
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)

                Spacer()

                HStack{
                    Button(action: {
              
                    }) {
                        TimerView(controller: controller)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            
                    }
                    
                    Spacer()
                    
           
                    InvestmentView(controller: controller)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                }

                HStack {
                    Button("SELL") {
                        controller.performSellAction()
                    }
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)

                    Spacer()

                    Button("BUY") {
                        controller.performBuyAction()
                    }
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding(.horizontal)
            }
            .navigationBarTitle("Trade")
            .padding()
        }
    }
}

struct TradeView_Previews: PreviewProvider {
    static var previews: some View {
        TradeView()
    }
}






