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
    
    var titleLabel: UILabel!
    
    // Information Labels
    var creditsLabel:UILabel!
    var betLabel:UILabel!
    var winnerPaidLabel:UILabel!
    var creditsTitleLabel:UILabel!
    var betTitleLabel:UILabel!
    var winnerPaidTitleLabel:UILabel!
    
    let kMarginForView:CGFloat = 5.0
    let KMarginForSlot:CGFloat = 2.0
    
    let kSixth:CGFloat = 1.0/6.0
    let kThird:CGFloat = 1.0/3.0
    
    let kNumberOfContainers = 3
    let kNumberOfSlots = 3
    
    override func viewDidLoad() {
    super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupContainerViews()
        setupFirstContainer(self.firstContainer)
        setupSecondContainer(self.seconContainer)
        setupThirdContainer(self.thirdContainer)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setupBG(){
        self.view.backgroundColor = UIColor.blueColor()
    }
    func setupContainerViews() {
        
        self.firstContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: view.bounds.origin.y, width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * kSixth))
        self.firstContainer.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.firstContainer)
        
        self.seconContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height, width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * (3 * kSixth)))
        self.seconContainer.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.seconContainer)
        
        self.thirdContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: self.firstContainer.frame.height + seconContainer.frame.height, width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * kSixth))
        self.thirdContainer.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(self.thirdContainer)
        
        self.fourthContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height + seconContainer.frame.height + thirdContainer.frame.height, width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * kSixth))
        self.fourthContainer.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.fourthContainer)
    }
    
    func setupFirstContainer(containerView: UIView) {
        self.titleLabel = UILabel()
        self.titleLabel.text = "Slots Machine"
        self.titleLabel.textColor = UIColor.yellowColor()
        self.titleLabel.font = UIFont(name: "MarkerFelt-Wide", size: 40)
        self.titleLabel.sizeToFit()
        self.titleLabel.center = containerView.center
        containerView.addSubview(self.titleLabel)
        
    }
    
    func setupSecondContainer(containerView: UIView){
        
        for var containerNumber = 0; containerNumber < kNumberOfContainers; ++containerNumber{
            for var slotNumber = 0; slotNumber < kNumberOfSlots; ++slotNumber{
                
                var slotImageView = UIImageView()
                slotImageView.backgroundColor = UIColor.yellowColor()
                slotImageView.frame = CGRect(x: containerView.bounds.origin.x+(containerView.bounds.size.width * CGFloat(containerNumber) * kThird), y: containerView.bounds.origin.y + (containerView.bounds.size.height * CGFloat (slotNumber) * kThird), width: containerView.bounds.width * kThird - KMarginForSlot, height: containerView.bounds.height * kThird - KMarginForSlot)
                
                containerView.addSubview(slotImageView)

            }
        }
        
    }
    
    func setupThirdContainer(containerview: UIView){
        
        self.creditsLabel = UILabel()
        self.creditsLabel.text =  "000000000"
        self.creditsLabel.textColor = UIColor.redColor()
        self.creditsLabel.font = UIFont(name:"Menlo-Bold", size: 16)
        self.creditsLabel.sizeToFit()
        self.creditsLabel.center = CGPoint(x: containerview.frame.width * kSixth, y: containerview.frame.height * kThird)
        self.creditsLabel.textAlignment = NSTextAlignment.Center
        self.creditsLabel.backgroundColor = UIColor.darkGrayColor()
        containerview.addSubview(self.creditsLabel)
        
        self.betLabel = UILabel()
        self.betLabel.text = "0000"
        self.betLabel.textColor = UIColor.redColor()
        self.betLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        self.betLabel.sizeToFit()
        self.betLabel.center = CGPoint(x: containerview.frame.width * kSixth * 3, y: containerview.frame.height * kThird)
        
    self.betLabel.textAlignment = NSTextAlignment.Center
        self.betLabel.backgroundColor = UIColor.darkGrayColor()
        containerview.addSubview(self.betLabel)
        
        self.winnerPaidLabel = UILabel()
        self.winnerPaidLabel.text = "000000"
        self.winnerPaidLabel.textColor = UIColor.redColor()
        self.winnerPaidLabel.font = UIFont(name: "Menlo-Bold", size: 16 )
        self.winnerPaidLabel.sizeToFit()
        self.winnerPaidLabel.center = CGPoint(x: containerview.frame.width * kSixth * 5, y: containerview.frame.height * kThird)
        self.winnerPaidLabel.textAlignment = NSTextAlignment.Center
        self.winnerPaidLabel.backgroundColor = UIColor.darkGrayColor()
        containerview.addSubview(self.winnerPaidLabel)
        

        
        
    }
    
    
    
    
    
    


}

