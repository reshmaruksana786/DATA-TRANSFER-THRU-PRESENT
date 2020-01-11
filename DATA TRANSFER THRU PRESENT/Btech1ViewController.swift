//
//  Btech1ViewController.swift
//  DATA TRANSFER THRU PRESENT
//
//  Created by Syed.Reshma Ruksana on 13/11/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class Btech1ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var eng1: UITextField!
    
    @IBOutlet weak var engPhy1: UITextField!
    
    @IBOutlet weak var engChem1: UITextField!
    
    @IBOutlet weak var m1: UITextField!
    
    @IBOutlet weak var CDS1: UITextField!
    
    @IBOutlet weak var enggDrawing1: UITextField!
    
    @IBOutlet weak var MM: UITextField!
    
    
    @IBOutlet weak var CDSLab: UITextField!
    
    
    @IBOutlet weak var ITLab: UITextField!
    
    
    @IBOutlet weak var phyChemLab: UITextField!
    
    @IBOutlet weak var engLab: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         eng1.delegate=self
        engPhy1.delegate=self
        engChem1.delegate=self
        m1.delegate=self
        CDS1.delegate=self
        enggDrawing1.delegate=self
        MM.delegate=self
        CDSLab.delegate=self
        ITLab.delegate=self
        phyChemLab.delegate=self
        engLab.delegate=self
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
        
        if(textField==eng1)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        
        if(textField==engPhy1)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        
        if(textField==engChem1)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        
        if(textField==m1)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        if(textField==CDS1)
        {
            returnVal = isValidForNumbers(numbers: textField.text!)
        }
        if(textField==enggDrawing1)
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
