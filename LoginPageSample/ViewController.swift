//
//  ViewController.swift
//  LoginPageSample
//
//  Created by Reich, Brandon on 2/7/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class ViewController: UINavigationController {

    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // self.performSegue(withIdentifier: "loginView", sender: self)
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override public func viewDidAppear(_ animated: Bool)
    {
        self.performSegue(withIdentifier: "loginView", sender: self)
    }
    
    
}

