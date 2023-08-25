//
//  StatisticModel.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 23/08/2023.
//

import Foundation

struct StatisticModel: Identifiable{
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double?) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
}
