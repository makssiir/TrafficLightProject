//
//  ViewController.swift
//  TrafficLightProject
//
//  Created by Makssir on 21/04/2023.
//
//
import UIKit



final class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var colorLight = Color.red
    private var lightIsOn: CGFloat = 1
    private var lightIsOff: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    
    @IBAction func startButtonTapped() {
        if startButton.currentTitle == "Start" {
            startButton.setTitle("next", for: .normal)
        }
            
            switch colorLight {
            case .red:
                greenView.alpha = lightIsOff
                redView.alpha = lightIsOn
                colorLight = .yellow
            case .yellow:
                redView.alpha = lightIsOff
                yellowView.alpha = lightIsOn
                colorLight = .green
            case .green:
                yellowView.alpha = lightIsOff
                greenView.alpha = lightIsOn
                colorLight = .red
            }
        }
        
        
    }

    
    // MARK: - CurrentLight
    extension ViewController{
        enum Color {
            case red, yellow, green
        }
}























//import UIKit
//
//enum Color {
//    case red, yellow, green
//}
//
//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var redView: UIView!
//    @IBOutlet weak var yellowView: UIView!
//    @IBOutlet weak var greenView: UIView!
//
//    @IBOutlet weak var startButton: UIButton!
//
//    private var coloreLight = Color.red
//
//    private var cornerRadius: CGFloat = 70
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        redView.layer.cornerRadius = cornerRadius
//        yellowView.layer.cornerRadius = cornerRadius
//        greenView.layer.cornerRadius = cornerRadius
//        startButton.layer.cornerRadius = 15
//    }
//
//    //make circles from lights
//
//    @IBAction func startButtonTapped() {
//        startButton.setTitle("Next", for: .normal)
//        switch coloreLight {
//        case .red:
//            redView.alpha = 1
//            yellowView.alpha = 0.3
//            greenView.alpha = 0.3
//            coloreLight = .yellow
//        case .yellow:
//            redView.alpha = 0.3
//            yellowView.alpha = 1
//            greenView.alpha = 0.3
//            coloreLight = .green
//        case .green:
//            redView.alpha = 0.3
//            yellowView.alpha = 0.3
//            greenView.alpha = 1
//            coloreLight = .red
//        }
//
//    }
//
//}




