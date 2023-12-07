//
//  TraderModel.swift
//  testSoft1
//
//  Created by Вадим Эйхольс on 07.12.2023.
//

import Foundation

struct Trader: Identifiable {
    let id: UUID
    var number: Int 
    let name: String
    let countryFlag: String
    let deposit: Double
    var profit: Double
}

enum CurrencyPair {
    case eurUsd
    case gbpUsd

    var chartURL: URL {
        switch self {
        case .eurUsd:
            return URL(string: "https://www.tradingview.com/chart/?symbol=BMFBOVESPA%3AEUR1%21")!
        case .gbpUsd:
            return URL(string: "https://www.tradingview.com/chart/?symbol=NASDAQ%3AGBP")!
        }
    }
}
