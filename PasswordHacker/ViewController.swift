//
//  ViewController.swift
//  PasswordHacker
//
//  Created by 溝手彩加 on 2022/02/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
    @IBOutlet var countLabel: UILabel!
    
    var password: Int = 1325 //パスワード

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start(){
        for i in 0...9999{
            
            countLabel.text = String(i)
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            
            if i == password{
                var digits = [Int]()
                for _ in 0...3{
                    digits.append(password % 10)
                    password = password / 10
                }
                
                resultLabel1.text = String(digits[3])
                resultLabel2.text = String(digits[2])
                resultLabel3.text = String(digits[1])
                resultLabel4.text = String(digits[0])
            }
        }
    }
    
    @IBAction func reset(){
        password = 1325
        
        countLabel.text = "「START」ボタンを押して解析開始"
        
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
    }


}

