//
//  ViewController.swift
//  NikitinaAS_HW2.2
//
//  Created by Анна Никитина on 08.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorResultView: UIView!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorMix(redSlider: redSlider.value,
                 greenSlider: greenSlider.value,
                 blueSlider: blueSlider.value)
    }
    
    override func viewWillLayoutSubviews() {
        colorResultView.layer.cornerRadius = colorResultView.frame.height / 8
    }
    
    private func colorMix(redSlider: Float,
                          greenSlider: Float,
                          blueSlider: Float) {
        colorResultView.backgroundColor = UIColor(
            red: CGFloat(redSlider / 255),
            green: CGFloat(greenSlider / 255),
            blue: CGFloat(blueSlider / 255),
            alpha: 1.0)
    }
    
    @IBAction func redSliderAction() {
        redValueLabel.text = String(format: "%.0f",
                                    redSlider.value)
        
        colorMix(redSlider: redSlider.value,
                 greenSlider: greenSlider.value,
                 blueSlider: blueSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(format: "%.0f",
                                      greenSlider.value)
        
        colorMix(redSlider: redSlider.value,
                 greenSlider: greenSlider.value,
                 blueSlider: blueSlider.value)
    }
    
    @IBAction func blueSiderAction() {
        blueValueLabel.text = String(format: "%.0f",
                                     blueSlider.value)
        
        colorMix(redSlider: redSlider.value,
                 greenSlider: greenSlider.value,
                 blueSlider: blueSlider.value)
    }
    
}
