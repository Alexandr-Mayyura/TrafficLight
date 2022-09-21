//
//  SetupAnchor.swift
//  TrafficLight
//
//  Created by Aleksandr Mayyura on 21.09.2022.
//

import Foundation
import UIKit

extension ViewController {
    func setupButtons() {
        
        self.view.addSubview(redLightButton)
        self.view.addSubview(yellowLightButton)
        self.view.addSubview(greenLightButton)
        self.view.addSubview(goButton)
        
        redLightButton.backgroundColor = .red
        yellowLightButton.backgroundColor = .yellow
        greenLightButton.backgroundColor = .green
        goButton.backgroundColor = .blue
        
        redLightButton.frame.size = CGSize(width: 100, height: 100)
        redLightButton.frame.origin = CGPoint(
            x: view.frame.size.width / 2 - redLightButton.frame.size.width / 2,
            y: view.frame.size.height / 2 - redLightButton.frame.size.height * 3
        )
 

        yellowLightButton.frame.size = CGSize(width: 100, height: 100)
        yellowLightButton.frame.origin = CGPoint(
            x: view.frame.size.width / 2 - yellowLightButton.frame.size.width / 2,
            y: view.frame.size.height / 2 - yellowLightButton.frame.size.height * 1.5
        )
        
        greenLightButton.frame.size = CGSize(width: 100, height: 100)
        greenLightButton.frame.origin = CGPoint(
            x: view.frame.size.width / 2 - greenLightButton.frame.size.width / 2,
            y: view.frame.size.height / 2
        )

        goButton.frame.size = CGSize(width: 150, height: 50)
        goButton.frame.origin = CGPoint(
            x: view.frame.size.width / 2 - goButton.frame.size.width / 2,
            y: view.frame.size.height / 2 + goButton.frame.size.height * 5
        )
        
        redLightButton.layer.cornerRadius = redLightButton.frame.height / 2
        yellowLightButton.layer.cornerRadius = yellowLightButton.frame.height / 2
        greenLightButton.layer.cornerRadius = greenLightButton.frame.height / 2
        goButton.layer.cornerRadius = 15
        
        
        goButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 25)
        goButton.setTitle("ИГРАТЬ", for: .normal)
    }
}
