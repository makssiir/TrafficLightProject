//
//  ViewController.swift
//  TrafficLightProject
//
//  Created by Makssir on 21/04/2023.
//

import UIKit

enum Color {
    case red, yellow, green
}


class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var coloreLight = Color.red

    private var cornerRadius: CGFloat = 70
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = cornerRadius
        yellowView.layer.cornerRadius = cornerRadius
        greenView.layer.cornerRadius = cornerRadius
        startButton.layer.cornerRadius = 15
    }
    //make circles from lights
    
    @IBAction func startButtonTapped() {
        startButton.setTitle("Next", for: .normal)
        switch coloreLight {
        case .red:
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            coloreLight = .yellow
        case .yellow:
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
            coloreLight = .green
        case .green:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
            coloreLight = .red
        }
        
    }
    
}




