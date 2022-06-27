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
        redValueLabel.text = formattingValueLabel(toString: redSlider.value)
        greenValueLabel.text = formattingValueLabel(toString: greenSlider.value)
        blueValueLabel.text = formattingValueLabel(toString: blueSlider.value)
        colorizedView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    
    // Private Methods
    private func formattingValueLabel(toString value: Float) -> String {
        return String(format: "%.2f", value)
    }
    
    private func setupLabel() {
        redValueLabel.text = formattingValueLabel(toString: redSlider.value)
        greenValueLabel.text = formattingValueLabel(toString: greenSlider.value)
        blueValueLabel.text = formattingValueLabel(toString: blueSlider.value)
    }
    
    private func setupSlider() {
        redSlider.value = 0
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.value = 0
        greenSlider.minimumTrackTintColor = .green
        
        blueSlider.value = 0
        blueSlider.minimumTrackTintColor = .blue
        
    }

}

