//
//  ViewController.swift
//  DATA TRANSFER THRU PRESENT
//
//  Created by Syed.Reshma Ruksana on 11/11/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit
import Toast_Swift

class ViewController: UIViewController,UITextFieldDelegate {
    
    
    @IBOutlet weak var firstNameTF: UITextField!
    
    @IBOutlet weak var lastNameTF: UITextField!
    
    @IBOutlet weak var ageTF: UITextField!
    
    
    @IBOutlet weak var qualificationTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTF.delegate=self
        lastNameTF.delegate=self
        ageTF.delegate=self
        qualificationTF.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func onNextBtnTap(_ sender: UIButton) {
        
        
        if((firstNameTF.text?.isEmpty)! || (lastNameTF.text?.isEmpty)! || (ageTF.text?.isEmpty)! || (qualificationTF.text?.isEmpty)! )
        {
            ac(title: "ALERT", messageDetails: "Enter all Fields")
            
        }else{
            
        }
        var secondVC=storyboard?.instantiateViewController(withIdentifier: "interVC") as! IntermediateViewController
        //          var seconVC = storyboard?.instantiateViewController(withIdentifier: "interVC") as!
        //            IntermediateViewController
        present(secondVC, animated: true, completion: nil)
        //         present(seconVC, animated: true, completion: nil)
    }
    
    func ac (title:String,messageDetails:String)
    {
        
        
        var nextButton=UIAlertController(title:title, message:messageDetails, preferredStyle: UIAlertController.Style.alert)
        present(nextButton,animated: true,completion: nil)
        
        var successAction=UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        
        nextButton.addAction(successAction)
        
        
    }
    
    
    var returnVal:Bool = false
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
    {
        if(textField == firstNameTF)
        {
            returnVal = true
        }else if(textField == lastNameTF)
        {
            if(firstNameTF.text!.count>=2)
            {
                returnVal = true
            }else
            {
                returnVal = false
            }
        }else if(textField == ageTF)
        {
            if(firstNameTF.text!.count>=2 &&
                lastNameTF.text!.count>=2 )
            {
                returnVal = true
            }else
            {
                returnVal = false
            }
        }else if(textField == qualificationTF)
        {
            if(firstNameTF.text!.count>=2 && lastNameTF.text!.count>=2 &&
                Int(ageTF.text!)! < 120)
            {
                returnVal = true
            }else
            {
                returnVal = false
            }
        }
        return returnVal
    }
    
    
    // FIRSTNAME , LASTNAME , QUALIFICATION
    
    func isValidForAlphabets(alphabets:String) -> Bool {
        let RegEx = "[A-Za-z ]{2,25}"
        let Test = NSPredicate(format:"SELF MATCHES %@", RegEx)
        return Test.evaluate(with: alphabets)
    }
    
    //  AGE
    
    func isValidForNumbers(numbers:String) -> Bool {
        let RegEx = "[0-9 ]{2,10}"
        let Test = NSPredicate(format:"SELF MATCHES %@", RegEx)
        return Test.evaluate(with: numbers)
    }
    
    // SHOULD END EDITING
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
    {
        //        textField.backgroundColor=UIColor.yellow
        
        if(textField==firstNameTF)
        {
            returnVal = isValidForAlphabets(alphabets: textField.text!)
        }
        
        if(textField==lastNameTF)
        {
            returnVal = isValidForAlphabets(alphabets: textField.text!)
        }
        
        if(textField==qualificationTF)
        {
            returnVal = isValidForAlphabets(alphabets: textField.text!)
        }
        
        if(textField==ageTF)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        
        
        return returnVal
    }
    
    
    //SHOULD CHANGE CHARACTER
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        if(textField==firstNameTF || textField==lastNameTF || textField==qualificationTF)
        {
            
            var  allowableCharacter=CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ")
            
            if(string.rangeOfCharacter(from: allowableCharacter) != nil || string=="")
            {
                
                return true
            }else{
                //            return false
                self.view.makeToast("Enter Only Alphabet", duration: 3.0, position: .center)
            }
            
        }
        
        if(textField==ageTF)
        {
            
            var  allowableCharacter=CharacterSet(charactersIn: "0123456789 ")
            
            if(string.rangeOfCharacter(from: allowableCharacter) != nil || string=="")
            {
                
                return true
            }else{
                //            return false
                self.view.makeToast("Enter Only Numbers", duration: 3.0, position: .center)
            }
            
        }
        return true
    }
    
}


