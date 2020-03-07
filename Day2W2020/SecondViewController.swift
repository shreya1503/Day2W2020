//
//  SecondViewController.swift
//  Day2W2020
//
//  Created by MacStudent on 2020-03-02.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imgCircus: UIImageView!
  
    override func viewDidLoad()
    {
        super.viewDidLoad()
     // imgCircus.image = UIImage(named: "home")
        imgCircus.backgroundColor = UIColor.gray
    
        
        
        
    }

    @IBAction func segImageChange(_ sender: UISegmentedControl)
    {
        
        displayImage(Index: sender.selectedSegmentIndex)
    }
    
    
    @IBAction func slideImageChange(_ sender: UISlider)
    {
       // print(sender.value)
       let n = Int(sender.value)
        
        displayImage(Index: n)
    }
    
    private func displayImage(Index : Int)
    {
        var imgName = String()
        switch Index
        {
            case 0:
                      imgName = "home"
            case 1:
                      imgName = "lion"
            case 2:
                      imgName = "gorilla"
            case 3:
                      imgName = "elephant"
        default:
            print("No Image Selected")
        }
        
        self.imgCircus.image = UIImage(named: imgName)
    }
    
}

