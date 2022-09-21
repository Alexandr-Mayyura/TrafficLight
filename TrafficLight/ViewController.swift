//
//  ViewController.swift
//  TrafficLight
//
//  Created by Aleksandr Mayyura on 15.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let redLightButton = UIButton()
    let yellowLightButton = UIButton()
    let greenLightButton = UIButton()
    let goButton = UIButton()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        goButton.addTarget(self, action: #selector (animated), for: .touchUpInside)

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupButtons()
    }
    
    @objc func animated(_ sender: UIButton) {
        animatedButton(button: yellowLightButton)
        animatedButton(button: redLightButton)
        animatedButton(button: greenLightButton)
        
    }

    func animatedButton(button: UIButton) {
        let keyFrameAnimation = CAKeyframeAnimation(keyPath:"position")
        let mutablePath = CGMutablePath()
        mutablePath.move(to: CGPoint(x: 50, y: 200))
        mutablePath.addQuadCurve(to: CGPoint(x: 150, y: 100), control: CGPoint(x: 250, y: 200))
        
        keyFrameAnimation.path = mutablePath
        keyFrameAnimation.duration = 2.0
        keyFrameAnimation.fillMode = .forwards
        keyFrameAnimation.isRemovedOnCompletion = false
        button.layer.add(keyFrameAnimation, forKey: "animation")
    }
//    @IBAction func nextButtonTapped() {

}

