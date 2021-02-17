//
//  SelectionLabel.swift
//  PizzaSliceCalculator
//
//  Created by stanley phillips on 2/8/21.
//

import UIKit

class SelectionLabel: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }
    
    func setupViews() {
        self.textColor = .darkSauce
        self.font = UIFont.boldSystemFont(ofSize: 24)
        self.adjustsFontSizeToFitWidth = true
        self.minimumScaleFactor = CGFloat(0.5)
    }
}//end class

