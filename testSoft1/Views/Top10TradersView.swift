//
//  Top10TradersView.swift
//  testSoft1
//
//  Created by Вадим Эйхольс on 07.12.2023.
//
import SwiftUI

struct Top10TradersView: View {
    @ObservedObject var controller = Top10TradersController()

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 30) {
                    Text("TOP 10 Traders")
                        .font(.system(size: 24, weight: .bold))
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        

                    HStack {
                        Text("№").font(.system(size: 18, weight: .bold))
                        Text("Country").font(.system(size: 18, weight: .bold))
                        Text("Name").font(.system(size: 18, weight: .bold))
                        Spacer()
                        Text("Deposit").font(.system(size: 18, weight: .bold))
                        Text("Profit").font(.system(size: 18, weight: .bold))
                    }
                    .padding(.horizontal, 16)
                    .foregroundColor(.secondary)

                    ForEach(controller.traders) { trader in
                        HStack {
                            Text("\(trader.number)").font(.system(size: 20))
                            Text(trader.countryFlag).font(.system(size: 20))
                            Text(trader.name).font(.system(size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Spacer()
                            Text("\(trader.deposit, specifier: "%.2f")").font(.system(size: 20))
                            Text("\(trader.profit, specifier: "%.2f")")
                                .font(.system(size: 20))
                                .foregroundColor(trader.profit >= 0 ? .green : .red)
                        }
                        .padding(.horizontal, 16)
                        .background(trader.number.isMultiple(of: 2) ? Color(.systemBackground) : Color(.systemGray6))
                        .listRowInsets(EdgeInsets())
                    }
                }
                .padding(.top, 8)
                .onAppear {
                    controller.fetchTopTraders()
                }
            }
        }
    }
}

struct Top10TradersView_Previews: PreviewProvider {
    static var previews: some View {
        Top10TradersView()
    }
}
