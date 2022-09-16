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
        
        
        redColorView.backgroundColor = .red
        
        redColorView.alpha = 0.3
        
        yellowColorView.backgroundColor = .yellow
        yellowColorView.alpha = 0.3
        
        greenColorView.backgroundColor = .green
        greenColorView.alpha = 0.3
        
    }

    @IBAction func nextButtonTapped() {
        
        nextButton.setTitle("NEXT", for: .normal)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redColorView.layer.cornerRadius = redColorView.frame.size.width / 2
        yellowColorView.layer.cornerRadius = redColorView.frame.size.width / 2
        greenColorView.layer.cornerRadius = redColorView.frame.size.width / 2
        nextButton.layer.cornerRadius = 12
    }
    
}

