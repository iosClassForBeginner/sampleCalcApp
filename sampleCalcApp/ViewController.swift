//
//  ViewController.swift
//  sampleCalcApp
//
//  Created by Muneharu Onoue on 2016/09/17.
//  Copyright © 2016年 Muneharu Onoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var leftText: UITextField!
    @IBOutlet weak var rightText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // 数値のみ入力
        leftText.keyboardType = .numberPad
        rightText.keyboardType = .numberPad
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func equal(_ sender: AnyObject) {
        // キーボード閉じる
        self.view.endEditing(true)

        let leftNum = Int(leftText.text!) ?? 0
        let rightNum = Int(rightText.text!) ?? 0
        let sumNum = leftNum + rightNum
        answerLabel.text = "\(sumNum)"
        
        leftText.text = ""
        rightText.text = ""
    }
}

