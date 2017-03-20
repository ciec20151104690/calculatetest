//
//  ViewController.swift
//  calculatetest
//
//  Created by 20151104690 on 17/3/9.
//  Copyright © 2017年 4690. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resulttxt: UILabel!
    var fristval:Double = 0
    var sencendval:Double = 0
    var fhval:Int = 0
    var isfinash:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func setnum(_ sender: UIButton) {
        if(resulttxt.text! != "0" && isfinash == false){
            resulttxt.text! += String(sender.tag)
        }else{
            resulttxt.text! = String(sender.tag)
            isfinash = false
        }
    }
    
    @IBAction func setfh(_ sender: UIButton) {
        if(fristval == 0){
            fristval = (resulttxt.text! as NSString).doubleValue
        }else{
            equal(sender)
        }
        fhval = sender.tag
        isfinash = true
    }
    
    
    @IBAction func equal(_ sender: Any) {
        if fristval != 0 && fhval != 0 {
            sencendval = (resulttxt.text! as NSString).doubleValue
            switch (fhval){
            case 1:
                fristval += sencendval
            case 2:
                fristval -= sencendval
            case 3:
                fristval *= sencendval
            case 4:
                fristval /= sencendval
            default:
                break
            }
            var result:String = String(fristval)
            let len = result.characters.index(of:".")
            let str = "0"+result.substring(from: len!)
            
            if ((str as NSString).doubleValue == 0)
            {
                result = result.substring(to: len!)
            }
            resulttxt.text! = result
            fhval = 0
            isfinash = true
        }
    }
    
    @IBAction func point(_ sender: Any) {
        if(!resulttxt.text!.contains(".") && isfinash == false){
            resulttxt.text! += "."
        }
    }
    


    @IBAction func reset(_ sender: Any) {
        resulttxt.text = "0"
        fristval = 0
        sencendval = 0
        fhval = 0    }
    }
