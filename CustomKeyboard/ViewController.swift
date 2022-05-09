//
//  ViewController.swift
//  CustomKeyboard
//
//  Created by Hong Cheng Yen on 2022/5/9.
//

import UIKit

class ViewController: UIViewController {
    
    var number1 = 0.0
    var number2 = 0.0
    var calculatetype = ""

    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // custom keyboard
        let keyboardView = Keyboard(frame: CGRect(x: 0, y: 0, width: 0, height: (view.frame.height) * 5 / 7))
        keyboardView.delegate = self
        textfield.inputView = keyboardView
        
        textfield.becomeFirstResponder()
    }


}

extension ViewController: KeyboardDelegate {
    func keyWasTapped(character: String) {
        textfield.insertText(character)
    }
    
    func deletTapped() {
        textfield.deleteBackward()

    }
    
    func deletAllTapped() {
        textfield.text?.removeAll()

    }
    
    func plusTapped() {
        // 若 number1 為 0 ,新增變數
        if let number = textfield.text ,
               number1 == 0 {
            
            number1 = Double(number) ?? 0
            textfield.text?.removeAll()

        }
        calculatetype = "+"
    }
    
    func multiplicationTapped() {
        // 若 number1 為 0 ,新增變數
        if let number = textfield.text ,
               number1 == 0 {
            number1 = Double(number) ?? 0
            textfield.text?.removeAll()
        }
        calculatetype = "X"
    }
    
    func deductTapped() {
        // 若 number1 為 0 ,新增變數
        if let number = textfield.text ,
               number1 == 0 {
            number1 = Double(number) ?? 0
            textfield.text?.removeAll()
        }
        calculatetype = "-"
    }
    
    func divisionTapped() {
        // 若 number1 為 0 ,新增變數
        if let number = textfield.text ,
           number1 == 0.0 {
            number1 = Double(number) ?? 0
            textfield.text?.removeAll()
        }
        calculatetype = "/"
    }
    
    func calculateTapped() {
        if let number = textfield.text {
            number2 = Double(number) ?? 0
            switch calculatetype{
            case "+":
                textfield.text = String(number1 + number2)
            case "X":
                textfield.text = String(number1 *  number2)
            case "-":
                textfield.text = String(number1 -  number2)
            case "/":
                textfield.text = String(number1 /  number2)
            default :
                print("")
            }
            number1 = 0.0
            number2 = 0.0
        }

    }
    
    
}
