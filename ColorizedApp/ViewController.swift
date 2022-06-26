//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Dmitry Pavlov on 26.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorizedView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorizedView.layer.cornerRadius = 15
        colorizedView.backgroundColor = .black
        setupSlider()
        setupLabel()
    }

    @IBAction func sliderAction() {
        redValueLabel.text = String(format: "%.2f",redSlider.value)
        greenValueLabel.text = String(format: "%.2f",greenSlider.value)
        blueValueLabel.text = String(format: "%.2f",blueSlider.value)
        colorizedView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    
    // Private Methods
    private func setupLabel() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func setupSlider() {
        redSlider.value = 0
        redSlider.minimumTrackTintColor = .red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        greenSlider.value = 0
        greenSlider.minimumTrackTintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        
        blueSlider.value = 0
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
    }

}

