//
//  NetworkFunctions.swift
//  StockPrice
//
//  Created by 郑泽瑶 on 4/10/22.
//

import Foundation
import PromiseKit
import SwiftyJSON
import Alamofire

//extension ViewController {
    
    func getStockURL(_ symbol : String) -> String{

        let url = "\(urlQuote)\(symbol)?apikey=\(apiKey)"
        return url
    }
    
    func getStockPrice(_ url : String) ->Promise<Quote>{
        return  Promise<Quote> { seal -> Void in
            AF.request(url).responseJSON {response in
                if response.error != nil {
                    seal.reject(response.error!)
                }
                let quote = Quote("", "")
                
                let quoteJSON = JSON(response.data!).arrayValue
                guard let stock = quoteJSON.first else{return seal.fulfill(quote)}
                
                quote.name = stock["name"].stringValue
                quote.symbol = stock["symbol"].stringValue
                quote.price = stock["price"].floatValue
                quote.dayhigh = stock["dayHigh"].floatValue
                quote.daylow = stock["dayLow"].floatValue
                print(quote)
                seal.fulfill(quote)
            }
            
        }
    }
    
//}


