//
//  ViewController.swift
//  InvApp
//
//  Created by fumiharu on 2015/07/06.
//  Copyright © 2015 fumiharu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var inputTextField: UITextField!
    
    var countValue = 0
    
    @IBAction func pressCountUpBtn(sender: AnyObject) {
        countValue++
        valueUpdate()
    }
    
    @IBAction func pressCountDownBtn(sender: AnyObject) {
        countValue--
        valueUpdate()
    }
    
    func valueUpdate() {
        label.text = String(countValue)
    }
    
    @IBAction func pressShowAlertBtn(sender: AnyObject) {
//        if objc_getClass("UIAlertController") != nil {
            let alertView = UIAlertController(title: "pressShowAlertBtn", message: "Change background color\n[" + inputTextField.text! + "]", preferredStyle: UIAlertControllerStyle.Alert)
            
            let pressNoBtn = UIAlertAction(title: "No", style: UIAlertActionStyle.Cancel, handler: nil)
            let pressYesBtn = UIAlertAction(title: "Yes", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
                switch self.inputTextField.text! {
                case "yellow":
                    self.view.backgroundColor = UIColor.yellowColor()
                case "red":
                    self.view.backgroundColor = UIColor.redColor()
                case "gray":
                    self.view.backgroundColor = UIColor.grayColor()
                case "clear":
                    self.view.backgroundColor = UIColor.clearColor()
                default:
                    break
                }
                
            })
            alertView.addAction(pressNoBtn)
            alertView.addAction(pressYesBtn)
            
            presentViewController(alertView, animated: true, completion: nil)
        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

