//
//  MarketDataModel.swift
//  BrytBro
//
//  Created by DJ on 12/6/21.
//

import Foundation
import SwiftUI

//JSON data:
/* URL: https://api.coingecko.com/api/v3/global

 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 11426,
     "upcoming_icos": 0,
     "ongoing_icos": 50,
     "ended_icos": 3375,
     "markets": 684,
     "total_market_cap": {
       "btc": 48698597.99261499,
       "eth": 578530909.4694573,
       "ltc": 15746615510.819658,
       "bch": 5316750377.1531105,
       "bnb": 4177490283.2890115,
       "eos": 748509907236.4767,
       "xrp": 3013315255015.8804,
       "xlm": 8857989742345.066,
       "link": 128729623455.74294,
       "dot": 88495683864.61061,
       "yfi": 103799786.43382382,
       "usd": 2380020914037.541,
       "aed": 8741650215795.923,
       "ars": 241132968455814.88,
       "aud": 3377863722415.095,
       "bdt": 204154961937739,
       "bhd": 897305964926.7776,
       "bmd": 2380020914037.541,
       "brl": 13523278833561.34,
       "cad": 3040843240903.7217,
       "chf": 2202887857510.3,
       "clp": 2014878105405905.2,
       "cny": 15175727354177.59,
       "czk": 53666113402036.85,
       "dkk": 15693907887602.762,
       "eur": 2110302663933.3235,
       "gbp": 1796025662276.4949,
       "hkd": 18563806126355.715,
       "huf": 771120678534580.1,
       "idr": 34367144995565010,
       "ils": 7539406451279.001,
       "inr": 179432266211166.25,
       "jpy": 270050263021726.53,
       "krw": 2810638645419164.5,
       "kwd": 720508491348.4121,
       "lkr": 482457371513829.75,
       "mmk": 4235638620489203,
       "mxn": 50476126150554.84,
       "myr": 10072248508206.885,
       "ngn": 975784774546254.2,
       "nok": 21695092542013.77,
       "nzd": 3528811788846.0947,
       "php": 119974483775802.23,
       "pkr": 420252192896179.25,
       "pln": 9702067195300.234,
       "rub": 176266966916626,
       "sar": 8928179594891.787,
       "sek": 21655296212310.145,
       "sgd": 3258948357466.1226,
       "thb": 80473521807675.33,
       "try": 32785264095049.965,
       "twd": 66018205363988.67,
       "uah": 65143747599836.32,
       "vef": 238311494122.57895,
       "vnd": 54811881650284570,
       "zar": 37826376872989.22,
       "xdr": 1697806959195.995,
       "xag": 106839995638.67416,
       "xau": 1337547953.4799578,
       "bits": 48698597992614.99,
       "sats": 4869859799261499
     },
     "total_volume": {
       "btc": 3095744.3597509363,
       "eth": 36776906.80547415,
       "ltc": 1001004097.9039886,
       "bch": 337983035.8724375,
       "bnb": 265560868.59764355,
       "eos": 47582382636.48608,
       "xrp": 191554871996.1404,
       "xlm": 563097766957.3746,
       "link": 8183274717.814495,
       "dot": 5625624257.760265,
       "yfi": 6598498.039811984,
       "usd": 151296682541.83237,
       "aed": 555702124208.3734,
       "ars": 15328696468023.41,
       "aud": 214729027070.95612,
       "bdt": 12978023967543.488,
       "bhd": 57041270065.191475,
       "bmd": 151296682541.83237,
       "brl": 859667750202.6936,
       "cad": 193304811636.30237,
       "chf": 140036426943.65668,
       "clp": 128084745506264.69,
       "cny": 964713036891.4868,
       "czk": 3411526711699.254,
       "dkk": 997653501911.1774,
       "eur": 134150834696.09673,
       "gbp": 114172410359.81288,
       "hkd": 1180091429323.9114,
       "huf": 49019737521452.93,
       "idr": 2184701401401679.5,
       "ils": 479276117989.1924,
       "inr": 11406415153158.678,
       "jpy": 17166953732950.275,
       "krw": 178670826112363.16,
       "kwd": 45802347299.253944,
       "lkr": 30669562333410.406,
       "mmk": 269257327927821.53,
       "mxn": 3208740893451.4595,
       "myr": 640287560517.0354,
       "ngn": 62030126875326.03,
       "nok": 1379145666193.4854,
       "nzd": 224324716567.80652,
       "php": 7626715075437.97,
       "pkr": 26715211719824.08,
       "pln": 616755328404.5267,
       "rub": 11205198735398.918,
       "sar": 567559699109.2245,
       "sek": 1376615834364.7031,
       "sgd": 207169639624.43594,
       "thb": 5115659618849.48,
       "try": 2084142061350.2512,
       "twd": 4196742726093.2627,
       "uah": 4141153904180.4517,
       "vef": 15149336822.913673,
       "vnd": 3484362598938399.5,
       "zar": 2404602959455.376,
       "xdr": 107928698864.67664,
       "xag": 6791762546.108563,
       "xau": 85027222.62168439,
       "bits": 3095744359750.936,
       "sats": 309574435975093.6
     },
     "market_cap_percentage": {
       "btc": 38.79600805523208,
       "eth": 20.53065019854268,
       "bnb": 4.027781422435464,
       "usdt": 3.2202906846824497,
       "sol": 2.422704041005769,
       "ada": 1.7912098807190482,
       "usdc": 1.7201352621164168,
       "xrp": 1.569840341533319,
       "dot": 1.2040586805784244,
       "luna": 1.0491395528747898
     },
     "market_cap_change_percentage_24h_usd": 1.3644701510487645,
     "updated_at": 1638807970
   }
 }
 
 */

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
        //Another way to do execute code below
/*        if let item = totalMarketCap.first(where: { (key, value) -> Bool in
            return key == "usd"
        }) {
            return "\(item.value)"
        } */
        
        
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume:String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {$0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}

