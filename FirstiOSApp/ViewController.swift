//
//  ViewController.swift
//  FirstiOSApp
//
//  Created by Roman Petlyak on 8/18/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //array list of random fonts
    func FontSelector() -> String? {
        let fonts: [String] = ["American Typewriter", "Arial", "Avenir", "Baskerville", "Courier", "Didot", "Futura", "Georgia", "Helvetica", "Palatino" ]
        let randomfont: String? = fonts.randomElement()
        return randomfont
    }
    //links to labels
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    //link to button
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{
            
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            label1?.textColor = UIColor(red:blue, green:green, blue:red, alpha: 0.5)
            label2?.textColor = UIColor(red:red, green:blue, blue:green, alpha: 0.5)
            label3?.textColor = UIColor(red:green, green:red, blue:blue, alpha: 0.5)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        let randomColor = changeColor()
        
        if let chosenFont = FontSelector() {
            label1?.font = UIFont(name: chosenFont, size: 15)
            label2?.font = UIFont(name: chosenFont, size: 15)
            label3?.font = UIFont(name: chosenFont, size: 15)
        } else {
            print("Font selection failed.")
        }
        view.backgroundColor = randomColor
        
    }
}

