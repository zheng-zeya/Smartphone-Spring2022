//
//  Quote.swift
//  StockPrice
//
//  Created by 郑泽瑶 on 4/10/22.
//

import Foundation

class Quote {
    var symbol : String = ""
    var price : Float = 0.0
    var name : String = ""
    var daylow : Float = 0.0
    var dayhigh : Float = 0.0
    init(_ name: String, _ symbol : String){
        self.symbol = symbol
        self.name = name
    }
}
/*
 [ {
   "symbol" : "AAPL",
   "name" : "Apple Inc.",
   "price" : 170.09000000,
   "changesPercentage" : -1.19089290,
   "change" : -2.05000300,
   "dayLow" : 169.22000000,
   "dayHigh" : 171.77000000,
   "yearHigh" : 182.94000000,
   "yearLow" : 122.25000000,
   "marketCap" : 2775766794240.00000000,
   "priceAvg50" : 168.31780000,
   "priceAvg200" : 157.72916000,
   "volume" : 76575508,
   "avgVolume" : 93544954,
   "exchange" : "NASDAQ",
   "open" : 171.78000000,
   "previousClose" : 172.14000000,
   "eps" : 6.01500000,
   "pe" : 28.27764000,
   "earningsAnnouncement" : "2022-04-28T20:00:00.000+0000",
   "sharesOutstanding" : 16319400284,
   "timestamp" : 1649613720
 } ]
 */
