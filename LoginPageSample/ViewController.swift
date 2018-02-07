//
//  ViewController.swift
//  LoginPageSample
//
//  Created by Reich, Brandon on 2/7/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.performSegue(withIdentifier: "loginView", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func viewDidAppear(animated: Bool)
//    {
//        self.performSegue(withIdentifier: "loginView", sender: self)
//    }
    
    
}

