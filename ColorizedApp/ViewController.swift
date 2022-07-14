//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Dmitry Pavlov on 26.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorizedView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorizedView.layer.cornerRadius = 15
        setColor()
        setLabelValue(for: redLabel, greenLabel, blueLabel)
    }

    
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            redLabel.text = roundedStringValue(from: redSlider)
        case greenLabel:
            greenLabel.text = roundedStringValue(from: greenSlider)
        default:
            blueLabel.text = roundedStringValue(from: blueSlider)
        }
    }
    
    // Private Methods
    private func setColor() {
        colorizedView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
    }
    
    private func roundedStringValue(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    private func setLabelValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabel:
                redLabel.text = roundedStringValue(from: redSlider)
            case greenLabel:
                greenLabel.text = roundedStringValue(from: greenSlider)
            default:
                blueLabel.text = roundedStringValue(from: blueSlider)
            
            }
        }
    }

}

