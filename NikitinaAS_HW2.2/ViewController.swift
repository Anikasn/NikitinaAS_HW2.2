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
        
        
    }
    
    override func viewWillLayoutSubviews() {
        colorResultView.layer.cornerRadius = colorResultView.frame.height / 8
    }
    
    @IBAction func redSliderAction() {
        redValueLabel.text = String(Int(redSlider.value))
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(Int(greenSlider.value))
    }
    
    @IBAction func blueSiderAction() {
        blueValueLabel.text = String(Int(blueSlider.value))
    }
    
}

