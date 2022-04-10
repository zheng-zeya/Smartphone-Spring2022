//
//  ProtocolSendQuote.swift
//  StockPrice
//
//  Created by 郑泽瑶 on 4/10/22.
//

import Foundation

protocol SendStockDataDelegate {
    func sendStockData(_ quote : Quote)
}
