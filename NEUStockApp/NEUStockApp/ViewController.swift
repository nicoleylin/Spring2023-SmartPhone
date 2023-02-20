//
//  ViewController.swift
//  NEUStockApp
//
//  Created by 叶林 on 2/20/23.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController {
    @IBOutlet weak var txtStockSymbol: UITextField!
    
    @IBOutlet weak var lblStockPrice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func getStockPrice(_ sender: Any) {
        guard let symbol = txtStockSymbol.text else {return}
        
        
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        
        SwiftSpinner.show("Getting Stock Price for \(symbol)")
        
        
        AF.request(url).responseJSON { respone in
            SwiftSpinner.hide()
            if respone.error != nil {
                print("Error in response")
                return
            }
            guard let rawData = respone.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let stock = jsonArray.first else {return}
            let symbol = stock["symbol"].stringValue
            let price = stock["price"].doubleValue
            let volume = stock["volume"].intValue
            
            self.lblStockPrice.text = "Price = \(price) $"
        }
        
        
    }
}

