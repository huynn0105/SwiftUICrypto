//
//  Double.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 17/08/2023.
//

import Foundation

extension Double{
    private var currencyFormatter6: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current
//        formatter.currencyCode = "usd"
//        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    func asCurrencyWith6Decimals() -> String{
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    func asNumberString() -> String{
        return String(format: "%.2f",self)
    }
    
    func asPercentString() -> String{
        return asNumberString() + "%"
    }
    
    func formattedWithAbbreviations() -> String {
        let num = abs(Double(self))
        let sign = (self < 0 ) ?"-" : ""
        
        switch num{
        case 1_000_000_000_000...:
            let formated = num / 1_000_000_000_000
            let stringFormatted = formated.asNumberString()
            return "\(sign)\(stringFormatted)Tr"
        case 1_000_000_000...:
            let formated = num / 1_000_000_000
            let stringFormatted = formated.asNumberString()
            return "\(sign)\(stringFormatted)Bn"
        case 1_000_000...:
            let formated = num / 1_000_000
            let stringFormatted = formated.asNumberString()
            return "\(sign)\(stringFormatted)M"
        case 1_000...:
            let formated = num / 1_000
            let stringFormatted = formated.asNumberString()
            return "\(sign)\(stringFormatted)K"
        case 0...:
            return self.asNumberString()
        default:
            return "\(sign)\(self)"
        }
    }
}
