//
//  ViewController.swift
//  Hello World
//
//  Created by 叶林 on 2/19/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbExample: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("I am inside viewDidLoad() function")
    }

    @IBAction func pressMeAction(_ sender: UIButton) {
        print("Button was pressed")
        lbExample.text = "hello world "
    }
}

