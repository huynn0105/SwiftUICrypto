//
//  CoinDataService.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 18/08/2023.
//

import Foundation
import Combine

class MarketDataService{
    @Published var marketData: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?
    init(){
        getData()
    }
    
    func getData(){
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global")
        else {return}
        
        marketDataSubscription =  NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnGlobalData) in
                self?.marketData = returnGlobalData.data
                self?.marketDataSubscription?.cancel()
            })
    }
}
