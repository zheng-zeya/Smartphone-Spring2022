//
//  StockTableViewCode.swift
//  StockPrice
//
//  Created by 郑泽瑶 on 4/10/22.
//

import Foundation
import UIKit

extension ViewController : UITableViewDelegate, UITableViewDataSource, SendStockDataDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  stockQuoteModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("StockTableViewCell", owner: self, options: nil)?.first as! StockTableViewCell
        let stockModel = stockQuoteModel[indexPath.row] 
        
        if indexPath.row == 0{
            cell.lblCompanyName.text = "Apple.Inc"
        }else{
            cell.lblCompanyName.text = stockModel.name
        }
        
        cell.name = "Company : \(stockModel.name)"
        cell.lblSymbol.text = "Symbol : \(stockModel.symbol)"
        cell.lblCompanyName.text = stockModel.name
        cell.companySymbol = stockModel.symbol
        cell.sendStockDataDelegate = self
        
        return cell
    }
    
    
     func sendStockData(_ quote: Quote){
         print(quote)
        lblCompanyName.text = quote.name
        lblSymbol.text = "Symbol: \(quote.symbol)"
        lblPrice.text = "Price: \(quote.price)"
        lblDayHigh.text = "DayHigh: \(quote.dayhigh)"
        lblDayLow.text = "DayLow: \(quote.daylow)"
    }
    
    func getAAPLStock(){
        let url = "https://financialmodelingprep.com/api/v3/quote/AAPL?apikey=86282004c93130a90497e170bc0145e7"
        getStockPrice(url)
            .done { stockQuoteModel in
                
                self.lblCompanyName.text = "Company : \(stockQuoteModel.name)"
                self.lblSymbol.text = "Symbol : \(stockQuoteModel.symbol)"
                self.lblPrice.text = "Price : \(stockQuoteModel.price)"
                self.lblDayHigh.text = "DayHigh : \(stockQuoteModel.dayhigh)"
                self.lblDayLow.text = "DayLow : \(stockQuoteModel.daylow)"
        }
        .catch { error in
            print(error)
        }
            
    }
    
}
