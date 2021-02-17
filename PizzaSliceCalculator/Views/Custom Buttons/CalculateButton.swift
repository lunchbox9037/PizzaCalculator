//
//  CalculateButton.swift
//  PizzaSliceCalculator
//
//  Created by stanley phillips on 2/8/21.
//

import UIKit

class CalculateButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = .sauceRed
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.darkSauce.cgColor
        self.setTitleColor(.cheeseYellow, for: .normal)
        self.addCornerRadius()
    }
}//end class
