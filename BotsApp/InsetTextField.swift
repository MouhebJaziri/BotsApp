//
//  InsetTextField.swift
//  BotsApp
//
//  Created by mac on 15/02/2018.
//  Copyright © 2018 mouhebJaziri. All rights reserved.
//

import UIKit

class InsetTextField: UITextField {

    private var textRectOffSet : CGFloat = 20
    private var textPadding = UIEdgeInsets(top:0,left:20,bottom:0,right:0)
    
    override func awakeFromNib() {
        setupView()
        super.awakeFromNib()
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, textPadding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, textPadding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, textPadding)
    }
    
    func setupView(){
        let placeholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedStringKey.foregroundColor:#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)])
        self.attributedPlaceholder = placeholder
    }
}
