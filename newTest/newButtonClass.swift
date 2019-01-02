//
//  newButtonClass.swift
//  newTest
//
//  Created by Baisampayan Saha on 1/2/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit

@IBDesignable
class newButtonClass: UIButton {

    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor : UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    

}
