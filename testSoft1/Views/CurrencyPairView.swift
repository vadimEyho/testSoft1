//
//  CurrencyPairView.swift
//  testSoft1
//
//  Created by Вадим Эйхольс on 07.12.2023.
//

import SwiftUI

struct CurrencyPairView: View {
    @Binding var selectedCurrencyPair: CurrencyPair

    var body: some View {
        HStack {
            Button("EUR/USD") {
                selectedCurrencyPair = .eurUsd
            }
            .padding()
            .background(selectedCurrencyPair == .eurUsd ? Color.blue : Color.gray)
            .foregroundColor(.white)

            Button("GBP/USD") {
                selectedCurrencyPair = .gbpUsd
            }
            .padding()
            .background(selectedCurrencyPair == .gbpUsd ? Color.blue : Color.gray)
            .foregroundColor(.white)
        }
    }
}

struct CurrencyPairView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyPairView(selectedCurrencyPair: .constant(.eurUsd))
    }
}
