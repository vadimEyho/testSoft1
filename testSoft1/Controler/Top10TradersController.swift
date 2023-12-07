//
//  Top10TradersController.swift
//  testSoft1
//
//  Created by Вадим Эйхольс on 07.12.2023.
//

import Foundation

class Top10TradersController: ObservableObject {
    @Published var traders: [Trader] = []

    func fetchTopTraders() {
        // Ваши данные для топ 10 трейдеров
        let topTradersData: [(name: String, deposit: Double, profit: Double)] = [
            ("Ламбер", 2000, Double.random(in: -150...50)),
            ("Трейдер1", 2000, Double.random(in: -150...50)),
            ("Трейдер2", 2000, Double.random(in: -150...50)),
            ("Трейдер3", 2000, Double.random(in: -150...50)),
            ("Трейдер4", 2000, Double.random(in: -150...50)),
            ("Трейдер5", 2000, Double.random(in: -150...50)),
            ("Трейдер6", 2000, Double.random(in: -150...50)),
            ("Трейдер7", 2000, Double.random(in: -150...50)),
            ("Трейдер8", 2000, Double.random(in: -150...50)),
            ("Трейдер9", 2000, Double.random(in: -150...50)),
            // ... Другие трейдеры ...
        ]

        // Преобразование данных в модели Trader
        traders = topTradersData.map { data in
            Trader(id: UUID(), number: 0, name: data.name, countryFlag: "🇺🇸", deposit: min(data.deposit, 100000), profit: data.profit)
        }

        // Сортировка по убыванию
        sortTraders()

        // Присвоение номеров после сортировки
        for (index, var trader) in traders.enumerated() {
            trader.number = index + 1
            traders[index] = trader
        }
    }

    func updateProfits() {
        guard var randomTrader = traders.randomElement() else { return }
        randomTrader.profit = Double.random(in: -150...50)


        if let index = traders.firstIndex(where: { $0.id == randomTrader.id }) {
            traders[index] = randomTrader
        }

        sortTraders()

        for (index, var trader) in traders.enumerated() {
            trader.number = index + 1
            traders[index] = trader
        }
    }

    private func sortTraders() {
        traders.sort { $0.profit > $1.profit }
    }
}
