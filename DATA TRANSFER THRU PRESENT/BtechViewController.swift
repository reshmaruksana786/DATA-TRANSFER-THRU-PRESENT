//
//  BtechViewController.swift
//  DATA TRANSFER THRU PRESENT
//
//  Created by Syed.Reshma Ruksana on 13/11/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class BtechViewController: UIViewController {
    
    @IBOutlet weak var semSC1: UISegmentedControl!
    
    @IBOutlet weak var semSC2: UISegmentedControl!
    
    @IBOutlet weak var sem1CV: UIView!
    
    
    @IBOutlet weak var sem21CV: UIView!
    
    
    
    @IBOutlet weak var sem22CV: UIView!
    
    
    @IBOutlet weak var sem31CV: UIView!
    
    
    
    @IBOutlet weak var sem32CV: UIView!
    
    
    
    
    @IBOutlet weak var sem41CV: UIView!
    
    
    @IBOutlet weak var sem42CV: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func semsSC1(_ sender: UISegmentedControl) {
        segmentedControl()
    }
    
    
    @IBAction func semsSC2(_ sender: UISegmentedControl) {
        segmentedControl()
    }
    
    
    func segmentedControl()
    {
        
            
            if(semSC1.selectedSegmentIndex == 0){
                
                sem1CV.isHidden = false
                sem21CV.isHidden = true
                sem22CV.isHidden = true
                sem31CV.isHidden = true
                sem32CV.isHidden = true
                sem41CV.isHidden = true
                sem42CV.isHidden = true
            }
            
            if(semSC1.selectedSegmentIndex == 1 && semSC2.selectedSegmentIndex == 0){
                
                sem1CV.isHidden = true
                sem21CV.isHidden = false
                sem22CV.isHidden = true
                sem31CV.isHidden = true
                sem32CV.isHidden = true
                sem41CV.isHidden = true
                sem42CV.isHidden = true
                
            }
            
            if(semSC1.selectedSegmentIndex == 1 && semSC2.selectedSegmentIndex == 1)
                
            {
                
                sem1CV.isHidden = true
                sem21CV.isHidden = true
                sem22CV.isHidden = false
                sem31CV.isHidden = true
                sem32CV.isHidden = true
                sem41CV.isHidden = true
                sem42CV.isHidden = true
                
            }
            
            if(semSC1.selectedSegmentIndex == 2 && semSC2.selectedSegmentIndex == 0)
                
            {
                
                sem1CV.isHidden = true
                sem21CV.isHidden = true
                sem22CV.isHidden = true
                sem31CV.isHidden = false
                sem32CV.isHidden = true
                sem41CV.isHidden = true
                sem42CV.isHidden = true
                
            }
            
            if(semSC1.selectedSegmentIndex == 2 && semSC2.selectedSegmentIndex == 1)
                
            {
                
                sem1CV.isHidden = true
                sem21CV.isHidden = true
                sem22CV.isHidden = true
                sem31CV.isHidden = true
                sem32CV.isHidden = false
                sem41CV.isHidden = true
                sem42CV.isHidden = true
                
            }
            
            if(semSC1.selectedSegmentIndex == 3 && semSC2.selectedSegmentIndex == 0)
                
            {
                
                sem1CV.isHidden = true
                sem21CV.isHidden = true
                sem22CV.isHidden = true
                sem31CV.isHidden = true
                sem32CV.isHidden = true
                sem41CV.isHidden = false
                sem42CV.isHidden = true
                
            }
            
            
            
            if(semSC1.selectedSegmentIndex == 3 && semSC2.selectedSegmentIndex == 1)
                
            {
                
                sem1CV.isHidden = true
                sem21CV.isHidden = true
                sem22CV.isHidden = true
                sem31CV.isHidden = true
                sem32CV.isHidden = true
                sem41CV.isHidden = true
                sem42CV.isHidden = false
                
            }
            
            
            
        }
    
    
    @IBAction func OnNextBtnTapVC(_ sender: UIButton) {
        
        
        var fourthVC = storyboard?.instantiateViewController(withIdentifier: "btechOverallVC") as! btechOverallResult
        
        present(fourthVC, animated: true, completion: nil)
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
