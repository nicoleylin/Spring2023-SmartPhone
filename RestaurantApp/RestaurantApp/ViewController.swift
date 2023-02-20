//
//  ViewController.swift
//  RestaurantApp
//
//  Created by 叶林 on 2/20/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    let restuarants = ["Kochi", "Crown Shy", "Dahamaka", "Rezodora"]
    let food = ["Food 1", "Food 2", "Food 3", "Food 4"]

    @IBOutlet weak var tblViewTop: UITableView!
    
    
    @IBOutlet weak var tblViewBottom: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop {
            return food.count
        } else{
            return restuarants.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tblViewTop {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = food[indexPath.row]
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = restuarants[indexPath.row]
            return cell
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        }
    
}

