//
//  PickerViewController.swift
//  origin
//
//  Created by Aanvi Koolwal on 6/19/21.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var label : UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let material = ["Cotton", "Polyester", "Rayon", "Spandex", "Wool", "Cashmere", "Silk", "Linen", "Viscose", "Denim", "Leather", "Other"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return material[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return material.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = material[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
