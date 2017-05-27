//
//  ViewController.swift
//  SimpleAnimation2
//
//  Created by Jin Kato on 5/13/17.
//  Copyright © 2017 Jin Kato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    
    let blueView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()
    
    let animateButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Animate", for: .normal)
        btn.backgroundColor = .blue
        btn.addTarget(self, action: #selector(handleAnimate), for: UIControlEvents.touchUpInside)
        return btn
    }()
    
    //MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutBlue()
        layoutButton()
    }

    //MARK: Layout
    
    func layoutBlue(){
        view.addSubview(blueView)
        blueView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        blueView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        blueView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    }
    func layoutButton(){
        view.addSubview(animateButton)
        animateButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        animateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        animateButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        animateButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
    }
    
    //MARK: Handle
    
    func handleAnimate(){
        UIView.transition(with: blueView, duration: 2.5, options: [.curveEaseInOut, .transitionFlipFromLeft], animations: {
            self.blueView.isHidden = true
        }) { (Bool) in
            print(234)
        }
    }
    
}

