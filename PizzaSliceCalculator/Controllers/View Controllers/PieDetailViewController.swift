//
//  PieDetailViewController.swift
//  PizzaSliceCalculator
//
//  Created by stanley phillips on 2/8/21.
//

import UIKit

class PieDetailViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var pieAmountLabel: UILabel!
    
    // MARK: - Properties
    var pies: Int? {
        didSet {
            loadViewIfNeeded()
            updateViews()
        }
    }

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cheeseYellow
        pieAmountLabel.textColor = .darkSauce
    }
    
    // MARK: - Actions
    @IBAction func closeButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Methods
    func updateViews() {
        guard let pies = pies else {return}
        if pies > 1 {
            pieAmountLabel.text = "🍕 You need to order \(pies) pies! 🍕"
        } else {
            pieAmountLabel.text = "🍕 You need to order \(pies) pie! 🍕"
        }
    }
}//end class

