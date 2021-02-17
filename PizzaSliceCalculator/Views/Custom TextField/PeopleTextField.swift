//
//  PeopleTextField.swift
//  PizzaSliceCalculator
//
//  Created by stanley phillips on 2/8/21.
//

import UIKit

class PeopleTextField: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = .cheeseYellow
        self.layer.borderWidth = 2.5
        self.layer.borderColor = UIColor.darkSauce.cgColor
        self.layer.masksToBounds = true
        self.addCornerRadius()
        self.textColor = .darkSauce
//        setupPlaceholderText()
    }
    
//    func setupPlaceholderText() {
//        let currentPlaceholder = self.placeholder ?? ""
//        self.attributedPlaceholder = NSAttributedString(string: currentPlaceholder, attributes: [
//            NSAttributedString.Key.foregroundColor : UIColor.darkSauce
//        ])
//    }
}
