//
//  ViewController.swift
//  TrafficLight
//
//  Created by Aleksandr Mayyura on 15.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redColorView: UIView!
    
    @IBOutlet var yellowColorView: UIView!
    
    @IBOutlet var greenColorView: UIView!
    
    
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 12
        
        redColorView.backgroundColor = .red
        redColorView.layer.cornerRadius = redColorView.frame.width / 2 - 10
        redColorView.alpha = 0.3
        
        yellowColorView.backgroundColor = .yellow
        yellowColorView.layer.cornerRadius = redColorView.frame.width / 2 - 10
        yellowColorView.alpha = 0.3
        
        greenColorView.backgroundColor = .green
        greenColorView.layer.cornerRadius = redColorView.frame.width / 2 - 10
        greenColorView.alpha = 0.3
        
    }

    @IBAction func nextButtonTapped() {
    }
    
}

