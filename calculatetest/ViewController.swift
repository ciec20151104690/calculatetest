//
//  ViewController.swift
//  calculatetest
//
//  Created by 20151104690 on 17/3/9.
//  Copyright © 2017年 4690. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var sum: UILabel!

    var count = 0.00
    var flg = 0
    @IBAction func plus(_ sender: Any)
    {
        flg=1
        count=Double(sum.text!)!
        sum.text=""
        
    }
    @IBAction func minus(_ sender: Any) {
    
    
        flg=2
        count=Double(sum.text!)!
        sum.text=""
        
    }
    @IBAction func multiply(_ sender: Any) {
    
   
        flg=3
        count=Double(sum.text!)!
        sum.text=""
        
    }
    @IBAction func divided(_ sender: Any) {
    
    
        flg=4
        count=Double(sum.text!)!
        sum.text=""
    
    }
    
    @IBAction func point(_ sender: Any) {
       
        sum.text=sum.text!+"."
    }
    @IBAction func equal(_ sender: Any) {
    

        switch flg {
        case 1:
            var temp = Double()
            temp=count+Double(sum.text!)!
            sum.text="\(temp)"
        case 2:
            var temp = Double()
            
            temp=count-Double(sum.text!)!
            sum.text="\(temp)"
        case 3:
            var temp = Double()
            temp=count*Double(sum.text!)!
            sum.text="\(temp)"
        case 4:
            var temp : Double
            if sum.text=="0"{
                sum.text="除数不能等于0"
            }
            else{
                temp=count/Double(sum.text!)!
                
                sum.text="\(temp)"
            }
        default:
            print("wrong")
        }
        
    }
    
    @IBAction func one(_ sender: Any) {
    
  
        sum.text=sum.text!+"1"
    }
    @IBAction func two(_ sender: Any) {
    

        sum.text=sum.text!+"2"
    }
    @IBAction func three(_ sender: Any) {
    
   
        sum.text=sum.text!+"3"
    }
    @IBAction func four(_ sender: Any) {
    
          sum.text=sum.text!+"4"
    }
    @IBAction func five(_ sender: Any) {
    

        sum.text=sum.text!+"5"
    }
    @IBAction func six(_ sender: Any) {
    
   
        sum.text=sum.text!+"6"
    }
    @IBAction func seven(_ sender: Any) {
    
    
        sum.text=sum.text!+"7"
    }
    @IBAction func eight(_ sender: Any) {
    
    
        sum.text=sum.text!+"8"
    }
    @IBAction func nine(_ sender: Any) {
    
            sum.text=sum.text!+"9"
    }
    @IBAction func zero(_ sender: Any) {
    
          sum.text=sum.text!+"0"
    }
    
    @IBAction func AC(_ sender: Any) {
    
  
        sum.text=""
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}














