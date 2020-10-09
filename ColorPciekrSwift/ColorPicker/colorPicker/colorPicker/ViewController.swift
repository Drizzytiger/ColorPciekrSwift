//
//  ViewController.swift
//  colorPicker
//
//  Created by Drake Ewing on 10/9/20.
//

import UIKit

class ViewController: UIViewController{

    var colors = [
        Color(name: "Red", uiColor: UIColor.red),
        Color(name: "Organe", uiColor:  UIColor.orange),
        Color(name: "Yellow", uiColor: UIColor.yellow),
        Color(name : "Green", uiColor: UIColor.green),
        Color(name: "Blue", uiColor: UIColor.blue),
        Color(name: "Purple", uiColor: UIColor.purple)
    ]

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colors[0].uiColor
        picker.dataSource = self
        picker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func createColorPicker() {
        let colorPicker = UIPickerView()
        colorPicker.delegate = self
    }

}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        picker.backgroundColor = colors[row].uiColor
        label.backgroundColor = colors[row].uiColor
        view.backgroundColor = colors[row].uiColor
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        label.text = colors[row].name
        return label.text
    }
    
}
