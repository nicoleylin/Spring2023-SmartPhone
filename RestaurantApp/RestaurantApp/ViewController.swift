//
//  ViewController.swift
//  RestaurantApp
//
//  Created by 叶林 on 2/20/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    let restuarant = ["Kochi", "Crown Shy", "Dahamaka", "Rezodora"]
    let food = [["Pizza", "Peter Burger"],
                ["Cheese Salad", "Crispy Chicken"],
                ["Hot Pot", "Sichuan Noodel"],
                ["Bum", "Bake Lamb"]
    ]
    
    var menu : [String] = []

    @IBOutlet weak var tblViewTop: UITableView!
    
    
    @IBOutlet weak var tblViewBottom: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop {
            return restuarant.count
        } else{
            return menu.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tblViewTop {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = restuarant[indexPath.row]
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = menu[indexPath.row]
            return cell
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop {
            let selectedRow = indexPath.row
            
            menu = food[selectedRow]
            
            self.tblViewBottom.reloadData()
        }

    }
    
}

