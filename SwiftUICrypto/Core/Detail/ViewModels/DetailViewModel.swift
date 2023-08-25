//
//  DetailViewModel.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 25/08/2023.
//

import Foundation
import Combine
class DetailViewModel: ObservableObject {
    
    @Published var overviewStatistics: [StatisticModel] = []
    @Published var additionalStatistics: [StatisticModel] = []
    @Published var coinDescription: String? = nil
    @Published var websiteURL: String? = nil
    @Published var redditURL: String? = nil
    
    @Published var coin: CoinModel
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel){
        self.coin = coin
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubcribers()
    }
    
    private func addSubcribers(){
        coinDetailService.$coinDetail
            .combineLatest($coin)
            .map(mapDataToStatistics)
            .sink { [weak self] (returnArrays) in
                self?.overviewStatistics = returnArrays.overview
                self?.additionalStatistics = returnArrays.additional
            }
            .store(in: &cancellables)
        
        coinDetailService.$coinDetail.sink { [weak self] (returnedCoinDetails) in
            self?.coinDescription = returnedCoinDetails?.readableDescription
            self?.websiteURL = returnedCoinDetails?.links?.homepage?.first
            self?.redditURL = returnedCoinDetails?.links?.subredditURL
        }
        .store(in: &cancellables)
    }
    
    private func mapDataToStatistics(coinDetailModel: CoinDetailModel?, coinModel: CoinModel) -> (overview: [StatisticModel], additional: [StatisticModel]) {
        let overviewArray = createOverviewArray(coinModel: coinModel)
        let additionalArray = createAdditionalArray(coinDetailModel: coinDetailModel,coinModel: coinModel)
        return (overviewArray,additionalArray)

    }
    
    private func createOverviewArray(coinModel: CoinModel) -> [StatisticModel]{
        let price = coinModel.currentPrice.asCurrencyWith6Decimals()
        let priceChange = coinModel.priceChangePercentage24H
        let priceStat = StatisticModel(title: "Current Price", value: price, percentageChange: priceChange)
        
        let marketCap = "$" + (coinModel.marketCap?.formattedWithAbbreviations() ?? "")
        let marketCapChange = coinModel.marketCapChangePercentage24H
        let marketCapStat = StatisticModel(title: "Market Capitalization", value: marketCap, percentageChange: marketCapChange)
        
        let rank = "\(coinModel.rank)"
        let rankStat = StatisticModel(title: "Rank", value: rank, percentageChange: nil)
        
        let volume = "$" + (coinModel.totalVolume?.formattedWithAbbreviations() ?? "")
        let volumeStat = StatisticModel(title: "Volume", value: volume, percentageChange: nil)
        
        let overviewArray: [StatisticModel] = [
            priceStat,marketCapStat,rankStat,volumeStat]
        
        return overviewArray
    }
    
    private func createAdditionalArray(coinDetailModel: CoinDetailModel?, coinModel: CoinModel) -> [StatisticModel] {
        let high = coinModel.high24H?.asCurrencyWith6Decimals() ?? "n/a"
        let highStat = StatisticModel(title: "24h High", value: high, percentageChange: nil)
        
        let low = coinModel.low24H?.asCurrencyWith6Decimals() ?? "n/a"
        let lowStat = StatisticModel(title: "24h Low", value: low, percentageChange: nil)
        
        let priceChange2 = coinModel.priceChange24H?.asCurrencyWith6Decimals() ?? "n/a"
        let pricePercentChange2 = coinModel.priceChangePercentage24H
        let priceChangeStat = StatisticModel(title: "24 Price Change", value: priceChange2, percentageChange: pricePercentChange2)
        
        let marketCapChange2 = (coinModel.marketCapChange24H?.formattedWithAbbreviations() ?? "")
        let marketCapPercentChange2 = coinModel.marketCapChangePercentage24H
        let marketCapChangeStat = StatisticModel(title: "24H Market Cap Change", value: marketCapChange2, percentageChange: marketCapPercentChange2)
        
        let blockTime = coinDetailModel?.blockTimeInMinutes ?? 0
        let blockTimeString = blockTime  == 0 ? "n/a" : "\(blockTime)"
        let blockStat = StatisticModel(title: "Block Time", value: blockTimeString, percentageChange: nil)
        let hashing = coinDetailModel?.hashingAlgorithm ?? "n/a"
        let hashingStat = StatisticModel(title: "Hashing Algorithm", value: hashing, percentageChange: nil)
        let additionalArray : [StatisticModel] = [
            highStat,lowStat,priceChangeStat, marketCapChangeStat, blockStat, hashingStat
        ]
        
        return additionalArray
        
    }
}
