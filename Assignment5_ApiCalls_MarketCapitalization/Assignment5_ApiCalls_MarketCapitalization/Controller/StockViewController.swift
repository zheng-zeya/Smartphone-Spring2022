//
//  StockViewController.swift
//  Assignment5_ApiCalls_MarketCapitalization
//
//  Created by 郑泽瑶 on 3/1/22.
//

import UIKit
import SwiftyJSON
import Alamofire
import SwiftSpinner

class StockViewController: UIViewController {

    @IBOutlet weak var txtStockSymbol: UITextField!
    @IBOutlet weak var lblMarketCap: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getMarketCap(_ sender: Any) {
        guard let symbol = txtStockSymbol.text?.uppercased() else {return}
        let url = "\(marketCapitalizationURL)\(symbol)?apikey=\(apiKey)"
        print(url)
        
        SwiftSpinner.show("Getting Market Capitalization for \(symbol)")
        AF.request(url).responseJSON { response in
            SwiftSpinner.hide(nil)
            if response.error != nil{
                print(response.error!)
                return
            }
            let stocks = JSON(response.data!).array
            guard let stock = stocks!.first else{return}
            print(stock)
            
            let marketcap = MarketCap()
            marketcap.symbol = stock["symbol"].stringValue
            marketcap.date = stock["date"].stringValue
            marketcap.marketCap = stock["marketCap"].intValue
            self.lblMarketCap.text = "\(marketcap.symbol) : Date:\(marketcap.date), MarketCap:\(marketcap.marketCap)"
        }
    }
    


}
