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
    
    private var isOnRedColor = false
    private var isOnYellowColor = false
    private var isOnGreenColor = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorView.backgroundColor = .red
        redColorView.alpha = 0.3
        
        yellowColorView.backgroundColor = .yellow
        yellowColorView.alpha = 0.3
        
        greenColorView.backgroundColor = .green
        greenColorView.alpha = 0.3
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redColorView.layer.cornerRadius = redColorView.frame.size.width / 2
        yellowColorView.layer.cornerRadius = redColorView.frame.size.width / 2
        greenColorView.layer.cornerRadius = redColorView.frame.size.width / 2
        nextButton.layer.cornerRadius = 12
    }

    @IBAction func nextButtonTapped() {
        
        nextButton.setTitle("NEXT", for: .normal)
        
        switch isOnRedColor {
        case true where isOnYellowColor == false && isOnGreenColor == false:
            isOnRedColor = false
            isOnYellowColor = true
            redColorView.alpha = 0.3
            yellowColorView.alpha = 1
        case false where isOnYellowColor == true && isOnGreenColor == false:
            isOnYellowColor = false
            isOnGreenColor = true
            yellowColorView.alpha = 0.3
            greenColorView.alpha = 1
        case false where isOnYellowColor == false && isOnGreenColor == true:
            isOnRedColor = true
            isOnGreenColor = false
            redColorView.alpha = 1
            greenColorView.alpha = 0.3
        default:
            isOnRedColor = true
            redColorView.alpha = 1
        }
    }
}

