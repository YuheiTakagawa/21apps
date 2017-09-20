//
//  ViewController.swift
//  fuck1
//
//  Created by roto on 2017/09/20.
//  Copyright © 2017年 yuhei. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var energy: UILabel!
    
    @IBAction func cal(_ sender: Any) {
        calc()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calc(){
        let weight = Int((input.text)!) ?? 0
        let ret = weight*299792458
        energy.text = String(ret)
        energy.sizeToFit()
        
    }


}

