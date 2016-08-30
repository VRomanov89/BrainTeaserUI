//
//  CustomButton.swift
//  BrainTeaserUIProject
//
//  Created by Volodymyr Romanov on 3/20/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

import UIKit

@IBDesignable

class CustomButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet{
            setupView()
        }
    }
    
    @IBInspectable var fontColor: UIColor = UIColor.whiteColor() {
        didSet {
            self.tintColor = fontColor
        }
    }
    
    override func awakeFromNib() {
        setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
}
