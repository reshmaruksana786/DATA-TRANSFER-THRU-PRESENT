//
//  Intermediate2ViewController.swift
//  DATA TRANSFER THRU PRESENT
//
//  Created by Syed.Reshma Ruksana on 13/11/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class Intermediate2ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var sanskrit2Marks: UITextField!
    

    @IBOutlet weak var english2Marks: UITextField!
    
    
    @IBOutlet weak var maths2A: UITextField!
    
    
    
    
    @IBOutlet weak var maths2B: UITextField!
    
    
    
    @IBOutlet weak var physics2: UITextField!
    
    
    @IBOutlet weak var chemistry2: UITextField!
    
    
    @IBOutlet weak var phyLab: UITextField!
    
    
    @IBOutlet weak var chemLab: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sanskrit2Marks.delegate=self
        english2Marks.delegate=self
        maths2A.delegate=self
        maths2B.delegate=self
        physics2.delegate=self
        chemistry2.delegate=self
        phyLab.delegate=self
        chemLab.delegate=self

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
        
        if(textField==sanskrit2Marks)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        
        if(textField==english2Marks)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        
        if(textField==maths2A)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        
        if(textField==maths2B)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        if(textField==physics2)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        if(textField==chemistry2)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        if(textField==phyLab)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        if(textField==chemLab)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
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
