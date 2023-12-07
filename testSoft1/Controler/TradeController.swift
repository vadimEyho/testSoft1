//
//  TradeController.swift
//  testSoft1
//
//  Created by Вадим Эйхольс on 07.12.2023.
//

import Foundation
import SwiftUI

class TradeController: ObservableObject {
    @Published var selectedCurrencyPair: String = "BMFBOVESPA%3AEUR1%21"
    @Published var timerValue: Double = 0.5
    @Published var investment: Int = 0

    func selectCurrencyPair(_ newCurrencyPair: String) {
    }

    func performBuyAction() {
    }

    func performSellAction() {
    }

    func increaseInvestment() {
        investment += 1
    }

    func decreaseInvestment() {
        if investment > 0 {
            investment -= 1
        }
    }
}

