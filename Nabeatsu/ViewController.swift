

//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        // 問題1: 3の倍数かどうか調べる
        if number%3 == 0 {
            return true
        }
        // 問題2: 1の位が3かどうか調べる
        if number%10 == 3{
            return true
        }
        // 問題3: 10の位が3かどうか調べる
        if number/10%10 == 3 {
            return true
        }
        // 問題4: 3がつくかどうか調べる
        var checknum: Int = number
        while checknum != 0 {
            if checknum % 10 == 3 {
                return true
            }else {
                checknum = checknum/10
            }
        }
        // 問題4をやるときは問題3と問題2の答えを消してから書こう
        
        return false
    }
    func ii() -> Bool{
        if number % 50 == 0{
            return true
        }
        return false
    }
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
       
        if ii() == true {
          faceLabel.text = iine[Int.random(in:0..<iine.count)]
        }else  if isAho() == true {
                   
                   faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
               } else {
                   
                   faceLabel.text = "(゜o゜)"
               }
        }
    @IBAction func clear() {
           number = number*0
       }

    }
