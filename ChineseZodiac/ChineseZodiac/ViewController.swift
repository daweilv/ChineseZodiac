//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by 吕大卫 on 15/5/15.
//  Copyright (c) 2015年 吕大卫. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mylabel: UITextField!
    
    @IBOutlet weak var myimg: UIImageView!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        mylabel.resignFirstResponder()
    }

    @IBAction func myclick(sender: AnyObject) {
       mylabel.resignFirstResponder()
        if let year = mylabel.text.toInt(){
            var imgNum = (year - offset) % 12
            myimg.image = UIImage(named: String(imgNum))
        }
    }

}

