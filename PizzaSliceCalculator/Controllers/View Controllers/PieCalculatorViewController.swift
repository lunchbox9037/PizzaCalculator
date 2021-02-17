//
//  SliceCalculatorViewController.swift
//  PizzaSliceCalculator
//
//  Created by stanley phillips on 2/8/21.
//

import UIKit

class PieCalculatorViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var restaurantPicker: UIPickerView!
    @IBOutlet weak var hungerSegment: HungerSegment!
    @IBOutlet weak var peopleTextField: PeopleTextField!
    
    // MARK: - Properties
    var selectedRestaurant: String?
    var pies: Int?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        restaurantPicker.delegate = self
        restaurantPicker.dataSource = self
        setupViews()
    }
    
    // MARK: - Actions
    @IBAction func hungerSegmentChanged(_ sender: Any) {
    }
    
    @IBAction func calculateButtonTapped(_ sender: Any) {
        guard let peopleAmount = peopleTextField.text else {return}
        guard let peopleDouble = Double(peopleAmount) else {return}
        self.pies = CalculatorController.shared.calculatePieAmount(hunger: hungerSegment.selectedSegmentIndex, people: peopleDouble)
    }
    
    // MARK: - Methods
    func setupViews() {
        self.view.backgroundColor = UIColor.cheeseYellow
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCalculateVC" {
            guard let destination = segue.destination as? PieDetailViewController else {return}
            destination.pies = self.pies
        }
    }
}//end class

// MARK: - Extensions
extension PieCalculatorViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CalculatorController.shared.restaurants.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return CalculatorController.shared.restaurants[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedRestaurant = CalculatorController.shared.restaurants[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        return NSAttributedString(string: CalculatorController.shared.restaurants[row], attributes: [NSAttributedString.Key.foregroundColor : UIColor.darkSauce])
    }
}//end extension
