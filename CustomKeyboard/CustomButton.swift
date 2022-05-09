//
//  CustomButton.swift
//  CustomKeyboard
//
//  Created by Hong Cheng Yen on 2022/5/9.
//

import UIKit

class CustomButton: UIButton {
    
    override open var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? UIColor(red: 128/255, green: 183/255, blue: 185/255, alpha: 1) : UIColor(red: 70/255, green: 183/255, blue: 185/255, alpha: 1)
        }
    }
}
