//
//  ViewController.swift
//  TableViewApp
//
//  Created by 叶林 on 2/20/23.
//

import UIKit
/*
 steps
 */

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let friends = ["Alan", "Tom", "Peter", "Sara", "Mark", "Mic", "Alan", "Tom", "Peter", "Sara", "Mark", "Mic", "Alan", "Tom", "Peter", "Sara", "Mark", "Mic"]
    
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = friends[indexPath.row]
        return cell
    }
    

    

}

