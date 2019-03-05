//
//  MainViewController.swift
//  Table View Controller
//
//  Created by Denis Bystruev on 04/03/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var buttonName: String? {
        didSet {
            if button != nil {
                button.setTitle(buttonName, for: .normal)
            }
        }
    }
    
    @IBOutlet weak var button: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let buttonName = buttonName {
            button.setTitle(buttonName, for: .normal)
        }
    }
    
    func message(_ message: String, file: String = #file, function: String = #function, line: Int = #line) {
        let fileName = file.components(separatedBy: "/").last ?? ""
        
        print("In \(fileName) line \(line) function \(function): \(message)")
    }
    
    func buttonPressed(_ function: String = #function) {
        
        for viewController in tabBarController!.viewControllers! {
            let mainViewController = viewController as! MainViewController
            
            mainViewController.buttonName = function
        }

    }

    
    @IBAction func redButtonPressed(_ sender: UIButton) {
        buttonPressed()
    }
    
    @IBAction func orangeButtonPressed(_ sender: UIButton) {
        buttonPressed()
    }
    
    @IBAction func cyanButtonPressed(_ sender: UIButton) {
        buttonPressed()
    }
    
    @IBAction func blueButtonPressed(_ sender: UIButton) {
        buttonPressed()
    }
    
}
