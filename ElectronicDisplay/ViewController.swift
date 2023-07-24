//
//  ViewController.swift
//  ElectronicDisplay
//
//  Created by JongHoon on 2023/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var inputTextField: UITextField!
    @IBOutlet private weak var outputButton: UIButton!
    @IBOutlet private weak var changeColorButton: UIButton!
    @IBOutlet private weak var outputLabel: UILabel!
    
    private let colors: [UIColor] = [
        .red,
        .blue,
        .cyan,
        .magenta,
        .orange,
        .brown,
        .purple,
        .gray
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configTextField()
        configButtons()
        changeColor()
    }
    
    private func configTextField() {
        
        let width: CGFloat = 20.0 + outputButton.frame.width + 12.0 + changeColorButton.frame.width + 20.0
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 60.0))
        
        inputTextField.rightView = paddingView
        inputTextField.rightViewMode = .always
    }
    
    private func configButtons() {
        outputButton.configuration = UIButton.Configuration.electronicStyle(
            title: "보내기",
            baseForegroundColor: .black
        )
        changeColorButton.configuration = UIButton.Configuration.electronicStyle(
            title: "Aa",
            baseForegroundColor: .red
        )
    }
    
    @IBAction private func outputButtonTapped(_ sender: UIButton) {
        let input = inputTextField.text
        outputLabel.text = input
        inputTextField.text = ""
        view.endEditing(true)
    }
    
    @IBAction private func changeColorButtonTapped(_ sender: UIButton) {
        changeColor()
    }
    
    @IBAction private func textFieldReturnTapped(_ sender: UITextField) {
        let input = inputTextField.text
        outputLabel.text = input
        inputTextField.text = ""
        view.endEditing(true)
    }
    
    @IBAction private func viewTapGestureTapped(_ sender: UITapGestureRecognizer) {
        if inputTextField.isEditing {
            view.endEditing(true)
        } else {
            inputTextField.isHidden.toggle()
            outputButton.isHidden.toggle()
            changeColorButton.isHidden.toggle()
        }
    }
    
    private func changeColor() {
        let newColor = colors.randomElement()
        inputTextField.tintColor = newColor
        outputLabel.textColor = newColor
    }
}

