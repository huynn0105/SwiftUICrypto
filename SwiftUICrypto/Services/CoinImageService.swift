//
//  CoinImageService.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 18/08/2023.
//

import Foundation
import SwiftUI
import Combine
class CoinImageService{
    
    @Published var image : UIImage? = nil
    
    private var imageSubscription: AnyCancellable?
    private let coin: CoinModel
    private let fileManager = LocalFileManager.instance
    private let folderName = "coin_image"
    private let imageName: String
    
    init(coin: CoinModel) {
        self.coin = coin
        self.imageName = coin.id
        getCoinImage()
    }
    
    private func getCoinImage(){
        if let savedImage = fileManager.getImage(imageName: coin.id, folderName: folderName){
            image = savedImage
            print("Retrieved image from File Manager!")
        } else{
            donwloadCoinImage()
            print("donwload image now")
        }
    }
    
    private func donwloadCoinImage(){
        guard let url = URL(string: coin.image)
        else {return}
        
        imageSubscription =  NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnImage) in
                guard let self = self, let downloadedImage = returnImage else { return }
                self.image = downloadedImage
                self.imageSubscription?.cancel()
                self.fileManager.saveImage(image: downloadedImage, imageName: self.imageName, folderName: self.folderName)
            })
    }
}
