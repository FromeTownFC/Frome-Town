//
//  RoundCorners.swift
//  Frome Town
//
//  Created by kate Cummings on 12/10/2017.
//  Copyright © 2017 Dan Turner. All rights reserved.
//

import UIKit

@IBDesignable
class RoundCorners: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }


}
