//
//  ViewController.swift
//  easyMathApp
//
//  Created by 曾曜澤 on 2022/6/7.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessNumberLabel: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var maxMinLabel: UILabel!
    @IBOutlet weak var boodBadlabel: UILabel!
    @IBOutlet weak var startAgainButton: UIButton!
    @IBOutlet weak var cantTouchView: UIView!
    //設定隨機數字、最大、最小數字
    var randomNum: Int = 0
    var maxNum = 99
    var minNum = 1
    
    
    //猜的數字字串
    var tens = ""
    //字串最多兩個
    func num () {
        if tens.count == 1 {
            guessNumberLabel.text = tens
        } else if tens.count == 2 {
            guessNumberLabel.text = tens
        } else {
            guessNumberLabel.text = ""
            tens = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       start()
        startAgainButton.isHidden = true
        cantTouchView.isHidden = true
        correctLabel.isHidden = true
    }
    //開始遊戲
    func start() {
        tens = ""
        maxMinLabel.text = "The number is between 1 ~ 99"
        boodBadlabel.text = "Go ! Go !"
        randomNum = Int.random(in: 1...99)
        maxNum = 99
        minNum = 1
        maxMinLabel.isHidden = false
        startAgainButton.isHidden = true
        cantTouchView.isHidden = true
        correctLabel.isHidden = true
    }
    //檢查數字
    func checkNum() {
        let number = Int(tens)
        if number! > maxNum {
            clear()
            maxMinLabel.text = "The number is between \(minNum) ~ \(maxNum)"
        } else if number! < minNum {
            clear()
            maxMinLabel.text = "The number is between \(minNum) ~ \(maxNum)"
        } else {
        if number == randomNum {
            boodBadlabel.text = "Great ! "
            maxMinLabel.isHidden = true
            startAgainButton.isHidden = false
            cantTouchView.isHidden = false
            correctLabel.isHidden = false
            correctLabel.text = "\(tens)"
        } else {
            if number! > randomNum {
                boodBadlabel.text = "Too big ~ "
                maxNum = number!
                maxMinLabel.text = "The number is between \(minNum) ~ \(maxNum)"
            } else {
                boodBadlabel.text = "Too small ~ "
                minNum = number!
                maxMinLabel.text = "The number is between \(minNum) ~ \(maxNum)"
            }
        }
        }
        clear()
    }
    //清空
    func clear () {
        tens = ""
        guessNumberLabel.text = ""
    }
    
    

    @IBAction func button1(_ sender: Any) {
        tens = tens + "1"
        num()
    }
    @IBAction func button2(_ sender: Any) {
        tens = tens + "2"
        num()
    }
    @IBAction func button3(_ sender: Any) {
        tens = tens + "3"
        num()
    }
    @IBAction func button4(_ sender: Any) {
        tens = tens + "4"
        num()
    }
    @IBAction func button5(_ sender: Any) {
        tens = tens + "5"
        num()
    }
    @IBAction func button6(_ sender: Any) {
        tens = tens + "6"
        num()
    }
    @IBAction func button7(_ sender: Any) {
        tens = tens + "7"
        num()
    }
    @IBAction func button8(_ sender: Any) {
        tens = tens + "8"
        num()
    }
    @IBAction func button9(_ sender: Any) {
        tens = tens + "9"
        num()
    }
    @IBAction func button0(_ sender: Any) {
        tens = tens + "0"
        num()
    }
    @IBAction func clean(_ sender: Any) {
        tens = ""
        guessNumberLabel.text = tens
    }
    @IBAction func go(_ sender: Any) {
        checkNum()
    }
    @IBAction func start(_ sender: Any) {
        start()
    }
    
}

