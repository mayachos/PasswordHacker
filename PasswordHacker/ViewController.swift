//
//  ViewController.swift
//  PasswordHacker
//
//  Created by maya on 2020/09/15.
//  Copyright © 2020 maya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
    @IBOutlet var countLabel: UILabel!
    
    var password:Int = Int.random(in: 0...9999)
    //var password:Int = 1234

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func start() {
        for i in 0...9999 {
            
            countLabel.text = String(i)
            //処理を0.0005秒待機
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            
            if i == password {
                //print("This answer is \(i).")
                //\()はString()でも可
                
                var digit = [Int]()
                
                for _ in 0...3 {
                    digit.append(password % 10)
                    password = password / 10
                }
                
                resultLabel1.text = String(digit[0])
                resultLabel2.text = String(digit[1])
                resultLabel3.text = String(digit[2])
                resultLabel4.text = String(digit[3])
                break
            }
        }
    }
    @IBAction func reset() {
        
        password = Int.random(in: 0...9999)
        //password = 1234
        countLabel.text = "「START」を押して解析開始"
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
        
    }

}

