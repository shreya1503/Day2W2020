//
//  ViewController.swift
//  Day2W2020
//
//  Created by MacStudent on 2020-03-02.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnShowAlert(_ sender: UIButton)
    {
        if sender.tag == 0     //Show Alert Click
        {
            let alertController = UIAlertController(title: "Error", message:
               "Hello, world! ", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Default 1", style: .default))
            alertController.addAction(UIAlertAction(title: "Default 2", style: .default))
            alertController.addAction(UIAlertAction(title: "Destructive 1", style: .destructive))
            alertController.addAction(UIAlertAction(title: "Destructive 2", style: .destructive, handler: {(sender) in
                print("Click Destructive 2")
            }))

            self.present(alertController, animated: true, completion: nil)
        }
    
        if sender.tag == 1      //Show Action Sheet Click
        {
            let alertController = UIAlertController(title: "Error", message:
                          "Hello, world! ", preferredStyle: .actionSheet)
                       alertController.addAction(UIAlertAction(title: "Default 1", style: .default))
                       alertController.addAction(UIAlertAction(title: "Default 2", style: .default))
                       alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
                       alertController.addAction(UIAlertAction(title: "Destructive 1", style: .destructive))
                       alertController.addAction(UIAlertAction(title: "Destructive 2", style: .destructive))
            
            self.present(alertController, animated: true, completion: nil)
        
        }
        
        
    }
}

