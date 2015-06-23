//
//  ViewController.swift
//  SlotMachine
//
//  Created by Adam Nowak on 23.06.2015.
//  Copyright (c) 2015 Nowak Adam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstContainer: UIView!
    var seconContainer: UIView!
    var thirdContainer: UIView!
    var fourthContainer:UIView!
    
    let kMarginForView:CGFloat = 10.0
    let kSixth:CGFloat = 1.0/6.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupContainerViews() {
        self.firstContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: view.bounds.origin.y, width: self,view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * kSixth))
        
        self.firstContainer.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.firstContainer)
        
    }
    
    
    
    
    
    


}

