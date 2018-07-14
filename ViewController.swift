//
//  ViewController.swift
//  Conversion_Calculator
//
//  Created by Vito Bertolino on 7/13/18.
//  Copyright © 2018 Joseph Bertolino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var converters = [Converter]()
    var currentConverter = 0
    
  
    
    let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        converters = [
            Converter(inputUnit: "°F", outputUnit: "°C"),
            Converter(inputUnit: "°C", outputUnit: "°F"),
            Converter(inputUnit: "mi", outputUnit: "km"),
            Converter(inputUnit: "km", outputUnit: "mi")
        ]
        
        
        
        for (index, Converter) in converters.enumerated() {
            alert.addAction(UIAlertAction(title: Converter.label, style: .default, handler: {
                (alertAction) -> Void in
                self.currentConverter = index
                self.inputDisplay.placeholder = Converter.inputUnit
                self.outputDisplay.placeholder = Converter.outputUnit
                self.updateTextField()
            }))
        }
        
        inputDisplay.placeholder = converters[0].inputUnit
        outputDisplay.placeholder = converters[0].outputUnit
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        
        inputDisplay.text = inputDisplay.text! + String(sender.tag-1)
        updateTextField()
    }
    
    
    @IBAction func Clear(_ sender: UIButton) {
        outputDisplay.text = "";
        inputDisplay.text = "";
        
    }
    
    
    @IBAction func Decimal(_ sender: UIButton) {
        outputDisplay.text = outputDisplay.text! + ".";
        inputDisplay.text = inputDisplay.text! + ".";
    }
    
    
    @IBAction func pn(_ sender: UIButton) {
        if let text = inputDisplay.text,
            var inputAsDouble = Double(text) {
            inputAsDouble *= -1
            inputDisplay.text = "\(inputAsDouble)"
            updateTextField()
        } else {
            inputDisplay.text = "-"
            outputDisplay.text = "-"
        }
        
    }
    
    
    
    @IBAction func ConvertButton(_ sender: UIButton) {
     self.present(alert, animated: true, completion: nil)
        
    }
    
    
    
    
    func milesToKilometers(_ miles: Double) -> Double {
        return 1.61 * miles
    }
    
    func kilometersToMiles(_ kilometers: Double) -> Double {
        return 0.62 * kilometers
    }
    
    func cToF(_ celcius: Double) -> Double {
        return celcius * (9/5) + 32
    }
    
    func fToC(_ fahrenheit: Double) -> Double {
        return (fahrenheit - 32) * (5/9)
    }
    
    
    
    func updateTextField() {
        
        if let text = inputDisplay.text,
            let input = Double(text) {
            
            var output: Double
            
            switch currentConverter {
            case 0:
                output = fToC(input)
            case 1:
                output = cToF(input)
            case 2:
                output = milesToKilometers(input)
            case 3:
                output = kilometersToMiles(input)
            default:
                return
            }
            
            outputDisplay.text = "\(output)"
            
        }
        
    }
    
    
}
