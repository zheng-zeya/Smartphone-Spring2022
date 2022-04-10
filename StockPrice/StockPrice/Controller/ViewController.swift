//
//  ViewController.swift
//  StockPrice
//
//  Created by 郑泽瑶 on 4/10/22.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tblView: UITableView!
    
    @IBOutlet weak var lblCompanyName: UILabel!
    @IBOutlet weak var lblSymbol: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblDayHigh: UILabel!
    @IBOutlet weak var lblDayLow: UILabel!
    
    var stockQuoteModel: [Quote] = [Quote]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initStocks()
        getAAPLStock()
        
    }
    
    func initStocks(){
        let AAPL = Quote("Apple", "AAPL")
        let AMZN = Quote("Amazon", "AMZN")
        let MSFT = Quote("Microsoft", "MSFT")
        let GOOG = Quote("Google", "GOOG")
        let FB = Quote("Facebook", "FB")
        let TSLA = Quote("Tesla", "TSLA")

        stockQuoteModel.append(AAPL)
        stockQuoteModel.append(AMZN)
        stockQuoteModel.append(MSFT)
        stockQuoteModel.append(GOOG)
        stockQuoteModel.append(FB)
        stockQuoteModel.append(TSLA)


    }
    
//    func sendStockData(_ quote: Quote){
//        lblCompanyName.text = quote.name
//        lblSymbol.text = quote.symbol
//        lblPrice.text = quote.price
//        lblDayHigh.text = quote.dayhigh
//        lblDayLow.text = quote.daylow
//    }
    
    
    
    
    
    
    

}

