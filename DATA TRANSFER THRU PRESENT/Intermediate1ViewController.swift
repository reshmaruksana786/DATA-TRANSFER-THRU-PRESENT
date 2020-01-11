//
//  Intermediate1ViewController.swift
//  DATA TRANSFER THRU PRESENT
//
//  Created by Syed.Reshma Ruksana on 13/11/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class Intermediate1ViewController: UIViewController,UITextFieldDelegate{


    
    
    
    
    
    @IBOutlet weak var sanskrit1Marks: UITextField!
    
    
    
    @IBOutlet weak var english1Marks: UITextField!
    
    
    @IBOutlet weak var maths1A: UITextField!
    
    @IBOutlet weak var maths1Bmarks: UITextField!
    
    @IBOutlet weak var physics1Marks: UITextField!
    
    
    
    @IBOutlet weak var chemistry1Marks: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sanskrit1Marks.delegate=self
        english1Marks.delegate=self
        maths1A.delegate=self
        maths1Bmarks.delegate=self
        physics1Marks.delegate=self
        chemistry1Marks.delegate=self


        // Do any additional setup after loading the view.
    }
    
    
    //  AGE
    
    func isValidForNumbers(numbers:String) -> Bool {
        let RegEx = "[0-9]{1,3}"
        let Test = NSPredicate(format:"SELF MATCHES %@", RegEx)
        return Test.evaluate(with: numbers)
    }
    
    // SHOULD END EDITING
    
    var returnVal:Bool = false

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
    {
        //        textField.backgroundColor=UIColor.yellow
        
        if(textField==sanskrit1Marks)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        
        if(textField==english1Marks)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        
        if(textField==maths1A)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        
        if(textField==maths1Bmarks)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        if(textField==physics1Marks)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        if(textField==chemistry1Marks)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        return returnVal
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        if((Int(english1Marks.text!)! <= 100))
        {
            returnVal = true
        }
//        else{
//            returnVal = falseghf
//        }
        if((Int(english1Marks.text!)! <= 100))
        {
            returnVal = true
        }
        if((Int(english1Marks.text!)! <= 100))
        {
            returnVal = true
        }
        if((Int(english1Marks.text!)! <= 100))
        {
            returnVal = true
        }
        if((Int(english1Marks.text!)! <= 100))
        {
            returnVal = true
        }
        if((Int(english1Marks.text!)! <= 100))
        {
            returnVal = true
        }
        if((Int(english1Marks.text!)! <= 100))
        {
            returnVal = true
        }
        return returnVal
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
