//
//  ViewController2.swift
//  fuck1
//
//  Created by roto on 2017/09/21.
//  Copyright © 2017年 yuhei. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var input: UITextField!
    var correct = 0
    @IBOutlet weak var chnum: UILabel!
    @IBAction func FA(_ sender: Any) {
        check()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        correct = Int(arc4random()%101)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func check(){
        let answer = Int(input.text!)
        print(correct)
        if(correct == answer){
            chnum.text = "oh,yes!" + String(correct)
            chnum.sizeToFit()
        }else{
            chnum.text = "no, fuck you" + String(describing: answer)
            chnum.sizeToFit()
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
