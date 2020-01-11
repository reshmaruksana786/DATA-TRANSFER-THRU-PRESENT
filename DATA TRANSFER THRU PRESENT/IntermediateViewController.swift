//
//  IntermediateViewController.swift
//  DATA TRANSFER THRU PRESENT
//
//  Created by Syed.Reshma Ruksana on 13/11/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class IntermediateViewController: UIViewController{
    
    
    @IBOutlet weak var interSC: UISegmentedControl!
    
    @IBOutlet weak var inter1VC: UIView!
    
    @IBOutlet weak var inter2VC: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func segments(_ sender: UISegmentedControl) {
        
        if(interSC.selectedSegmentIndex==0)
        {
            inter1VC.isHidden=false
            inter2VC.isHidden=true
        }
        else{
            inter1VC.isHidden=true
            inter2VC.isHidden=false
        }
        
        
    }
    
    
    
    @IBAction func onNextBtnTap(_ sender: UIButton) {
    

        var thirdVC = storyboard?.instantiateViewController(withIdentifier: "btechVC") as! BtechViewController
        
        present(thirdVC, animated: true, completion: nil)
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
