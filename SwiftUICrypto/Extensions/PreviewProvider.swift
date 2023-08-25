//
//  PreviewProvider.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 17/08/2023.
//

import Foundation
import SwiftUI

extension PreviewProvider{
    static var dev: DeveloperPreview{
        return DeveloperPreview.instance
    }
}

class DeveloperPreview{
    static let instance = DeveloperPreview()
    private init() { }
    
    let homeVM = HomeViewModel()
    
    let stat1 = StatisticModel(title: "Market Cap", value: "$12.5Bn", percentageChange: 25.43)
    let stat2 = StatisticModel(title: "Total Volume", value: "$1.23Tr",percentageChange: nil)
    let stat3 = StatisticModel(title: "Portfolio Value", value: "$50.4k",percentageChange: -12.34)
    
    let coin = CoinModel(id: "bitcoin", symbol: "btc", name: "Bitcoin", image: "https://assets.coingecko.com/coins/images/1/small/bitcoin.png?1547033579", currentPrice: 26499,marketCap: 515467016054,marketCapRank: 1,fullyDilutedValuation: 556240618874,totalVolume: 28557033045,high24H: 28651,low24H: 25649,priceChange24H: -2069.7510832343,priceChangePercentage24H: -7.24479,marketCapChange24H: -40177325476.752,marketCapChangePercentage24H: -7.23076,circulatingSupply: 19460656,totalSupply: 21000000,maxSupply: 21000000,ath: 69045,athChangePercentage: -61.55163,athDate: "2021-11-10T14:24:11.849Z",atl: 67.81,atlChangePercentage: 39049.05942,atlDate: "2013-07-06T00:00:00.000Z",lastUpdated: "2023-08-18T03:07:43.858Z",sparklineIn7D: nil, priceChangePercentage24HInCurrency: 123456,currentHoldings:1234)
    
}
