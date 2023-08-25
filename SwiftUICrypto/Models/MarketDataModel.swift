//
//  MarketDataModel.swift
//  SwiftUICrypto
//
//  Created by Klabs Mobile on 23/08/2023.
//


/*
 URL: https://api.coingecko.com/api/v3/globa
 JSON
 {
   "data": {
     "active_cryptocurrencies": 10150,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 836,
     "total_market_cap": {
       "btc": 41932094.07622551,
       "eth": 663419144.6764083,
       "ltc": 16809632935.469036,
       "bch": 5814745147.219305,
       "bnb": 5064358095.773449,
       "eos": 1875595416073.0144,
       "xrp": 2095387029735.667,
       "xlm": 8973468166780.4,
       "link": 174255268551.69586,
       "dot": 246934079664.77673,
       "yfi": 195113691.37717548,
       "usd": 1091940263248.2784,
       "aed": 4010751183924.089,
       "ars": 382132466287656.75,
       "aud": 1699915130780.7068,
       "bdt": 119293439692445.27,
       "bhd": 411706248795.3938,
       "bmd": 1091940263248.2784,
       "brl": 5393092960183.258,
       "cad": 1481504147385.5234,
       "chf": 961826845360.1414,
       "clp": 949496655907538.2,
       "cny": 7961445653369.505,
       "czk": 24375928466622.934,
       "dkk": 7526880727103.27,
       "eur": 1009902791270.435,
       "gbp": 863636301068.0659,
       "hkd": 8561928718755.807,
       "huf": 387029660036986.94,
       "idr": 16707668773935580,
       "ils": 4125426750370.4214,
       "inr": 90322569817179.73,
       "jpy": 158833630692094.3,
       "krw": 1462434735211431,
       "kwd": 336605873309.9671,
       "lkr": 355317146548758,
       "mmk": 2293115267997979,
       "mxn": 18414933754628.2,
       "myr": 5084619835815.607,
       "ngn": 833423405924249.2,
       "nok": 11682629566643.86,
       "nzd": 1840452210421.8123,
       "php": 61760141289322.56,
       "pkr": 324852228316362.8,
       "pln": 4524807177474.287,
       "rub": 103043672792081.97,
       "sar": 4096054649229.307,
       "sek": 12020057670972.031,
       "sgd": 1482304539598.4841,
       "thb": 38294345032117.12,
       "try": 29710182225721.06,
       "twd": 34890440741433.51,
       "uah": 40338348010891.56,
       "vef": 109335978559.05006,
       "vnd": 26007875441584052,
       "zar": 20424633430032.72,
       "xdr": 821032067816.9076,
       "xag": 46033613600.123436,
       "xau": 574000238.181721,
       "bits": 41932094076225.516,
       "sats": 4193209407622551
     },
     "total_volume": {
       "btc": 1717862.531306073,
       "eth": 27178773.59330084,
       "ltc": 688652432.4866269,
       "bch": 238216884.64553323,
       "bnb": 207475233.6964349,
       "eos": 76838878671.41032,
       "xrp": 85843241227.69022,
       "xlm": 367622583111.58093,
       "link": 7138842056.956991,
       "dot": 10116327660.324968,
       "yfi": 7993364.2033800725,
       "usd": 44734309267.95146,
       "aed": 164311354656.6491,
       "ars": 15655098088777.27,
       "aud": 69641656919.3985,
       "bdt": 4887180924132.826,
       "bhd": 16866668700.69767,
       "bmd": 44734309267.95146,
       "brl": 220942753474.4127,
       "cad": 60693855645.31361,
       "chf": 39403858444.20095,
       "clp": 38898718623947.1,
       "cny": 326162322303.5602,
       "czk": 998626352943.1139,
       "dkk": 308359185572.6471,
       "eur": 41373420612.65026,
       "gbp": 35381215151.89893,
       "hkd": 350762747859.1206,
       "huf": 15855724979369.182,
       "idr": 684475192677998.4,
       "ils": 169009351815.9693,
       "inr": 3700310271606.084,
       "jpy": 6507052626116.209,
       "krw": 59912625196665.95,
       "kwd": 13789977112.17578,
       "lkr": 14556535423132.48,
       "mmk": 93943717470887.67,
       "mxn": 754417956233.0789,
       "myr": 208305311106.21594,
       "ngn": 34143461548763.98,
       "nok": 478610764422.67926,
       "nzd": 75399141459.42088,
       "php": 2530172532195.3315,
       "pkr": 13308457007215.559,
       "pln": 185371059633.6511,
       "rub": 4221464929843.4116,
       "sar": 167806043630.9707,
       "sek": 492434426469.7329,
       "sgd": 60726645894.006996,
       "thb": 1568832226027.0574,
       "try": 1217158598162.6233,
       "twd": 1429382008480.381,
       "uah": 1652570379545.7354,
       "vef": 4479246386.999978,
       "vnd": 1065483509093431.1,
       "zar": 836750781426.1051,
       "xdr": 33635816607.19126,
       "xag": 1885892458.423865,
       "xau": 23515484.35288398,
       "bits": 1717862531306.073,
       "sats": 171786253130607.3
     },
     "market_cap_percentage": {
       "btc": 46.42173597296332,
       "eth": 18.121596211774353,
       "usdt": 7.5884508104457415,
       "bnb": 3.038831398383422,
       "xrp": 2.521923070749582,
       "usdc": 2.3750531584405508,
       "steth": 1.2552114736102404,
       "ada": 0.8375763450081927,
       "doge": 0.8176133096190558,
       "sol": 0.7795070805694752
     },
     "market_cap_change_percentage_24h_usd": -0.06036790356282676,
     "updated_at": 1692784581
   }
 }
 */
import Foundation


struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item  = totalMarketCap.first(where: { $0.key == "usd" }){
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item  = totalVolume.first(where: { $0.key == "usd" }){
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominace: String {
        if let item  = marketCapPercentage.first(where: { $0.key == "btc" }){
            return item.value.asPercentString()
        }
        return ""
    }
}
