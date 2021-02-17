//
//  ToppingLabels.swift
//  PizzaSliceCalculator
//
//  Created by stanley phillips on 2/8/21.
//

import UIKit

class PieLabel: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }
    
    func setupViews() {
        self.backgroundColor = .sauceRed
        self.layer.borderWidth = 2.5
        self.layer.borderColor = UIColor.darkSauce.cgColor
        self.layer.masksToBounds = true
        self.textColor = .cheeseYellow
        self.addCornerRadius()
    }
}//end class
