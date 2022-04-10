//
//  StockTableViewCell.swift
//  StockPrice
//
//  Created by 郑泽瑶 on 4/10/22.
//

import UIKit

class StockTableViewCell: UITableViewCell {

    @IBOutlet weak var lblCompanyName: UILabel!
    @IBOutlet weak var lblSymbol: UILabel!
    
    var companySymbol = ""
    var name = ""
    
    var sendStockDataDelegate : SendStockDataDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func getPriceAction(_ sender: Any) {
        let stockURL = getStockURL(companySymbol)
        getStockPrice(stockURL).done { quote in
            quote.name = self.name
            
            self.sendStockDataDelegate?.sendStockData(quote)
        }
        .catch{ error in
            print(error.localizedDescription)
        }
    }

    
}
