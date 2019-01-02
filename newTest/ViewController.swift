//
//  ViewController.swift
//  newTest
//
//  Created by Baisampayan Saha on 1/2/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var addButton: newButtonClass!
    @IBOutlet weak var starButton: newButtonClass!
    @IBOutlet weak var calendarButton: newButtonClass!
    @IBOutlet weak var ballonButton: newButtonClass!
    
    var ballonButtonCenter: CGPoint!
    var calenderButtonCenter: CGPoint!
    var starButtonCenter: CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bgImage.alpha = 0
        titleLabel.alpha = 0
        descriptionLabel.alpha = 0
        addButton.alpha = 0
        ballonButton.alpha = 0
        calendarButton.alpha = 0
        starButton.alpha = 0
        ballonButton.transform = CGAffineTransform(rotationAngle: convertToRadians(degrees: 90))
        calendarButton.transform = CGAffineTransform(rotationAngle: convertToRadians(degrees: 90))
        starButton.transform = CGAffineTransform(rotationAngle: convertToRadians(degrees: 90))
        
        ballonButtonCenter = ballonButton.center
        calenderButtonCenter = calendarButton.center
        starButtonCenter = starButton.center
        
        ballonButton.center = addButton.center
        calendarButton.center = addButton.center
        starButton.center = addButton.center
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {
            self.bgImage.alpha = 1
        }) { (true) in
            self.showTitle()
        }
    }
    
    func showTitle(){
        UIView.animate(withDuration: 0.3, animations: {
            self.titleLabel.alpha = 1
        }) { (true) in
            self.showDesc()
        }
    }
    
    func showDesc(){
        UIView.animate(withDuration: 0.3, animations: {
            self.descriptionLabel.alpha = 1
        }) { (true) in
            self.showButton()
        }
    }
    
    func showButton(){
        UIView.animate(withDuration: 0.3) {
            self.addButton.alpha = 1
            self.ballonButton.alpha = 1
            self.calendarButton.alpha = 1
            self.starButton.alpha = 1
        }
    }
    
    func convertToRadians(degrees: CGFloat) -> CGFloat{
        return degrees * CGFloat.pi / 180
    }

    
    func toggleButton(button: newButtonClass, color1: UIColor, color2: UIColor) {
        if button.backgroundColor == color1 {
            UIView.animate(withDuration: 0.1) {
                button.backgroundColor = color2
                button.tintColor = color1
            }
        } else {
            UIView.animate(withDuration: 0.1) {
                button.backgroundColor = color1
                button.tintColor = color2
            }
        }
    }
    
    //MARK:- button pressed animation
    
    @IBAction func addButtonPressed(_ sender: newButtonClass) {
        
        if sender.backgroundColor == #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) {
            UIView.animate(withDuration: 0.3) {
                self.ballonButton.center = self.ballonButtonCenter
                self.calendarButton.center = self.calenderButtonCenter
                self.starButton.center = self.starButtonCenter
                self.ballonButton.transform = CGAffineTransform(rotationAngle: self.convertToRadians(degrees: 0))
                self.calendarButton.transform = CGAffineTransform(rotationAngle: self.convertToRadians(degrees: 0))
                self.starButton.transform = CGAffineTransform(rotationAngle: self.convertToRadians(degrees: 0))

            }
        }else {
            UIView.animate(withDuration: 0.3) {
                self.ballonButton.center = self.addButton.center
                self.calendarButton.center = self.addButton.center
                self.starButton.center = self.addButton.center
                self.ballonButton.transform = CGAffineTransform(rotationAngle: self.convertToRadians(degrees: 90))
                self.calendarButton.transform = CGAffineTransform(rotationAngle: self.convertToRadians(degrees: 90))
                self.starButton.transform = CGAffineTransform(rotationAngle: self.convertToRadians(degrees: 90))
            }
        }
        
        toggleButton(button: sender, color1: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), color2: #colorLiteral(red: 0.7058381438, green: 0.6217544079, blue: 0.6249390841, alpha: 1))
    }
    
    @IBAction func ballonButtonPressed(_ sender: newButtonClass) {
        toggleButton(button: sender, color1: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), color2: #colorLiteral(red: 0.7058381438, green: 0.6217544079, blue: 0.6249390841, alpha: 1))
    }
    
    @IBAction func calendarButtonPressed(_ sender: newButtonClass) {
        toggleButton(button: sender, color1: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), color2: #colorLiteral(red: 0.7058381438, green: 0.6217544079, blue: 0.6249390841, alpha: 1))
    }
    
    @IBAction func starBUttonPressed(_ sender: newButtonClass) {
        toggleButton(button: sender, color1: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), color2: #colorLiteral(red: 0.7058381438, green: 0.6217544079, blue: 0.6249390841, alpha: 1))
    }
    
    
    
}

