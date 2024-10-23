//
//  ViewController.swift
//  accel
//
//  Created by chris-laptop on 10/23/24.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
        
    @IBOutlet weak var label: UILabel!
    let movementManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        movementManager.startAccelerometerUpdates()
        movementManager.accelerometerUpdateInterval = 0.01
        
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true){ _ in
            
            if let data = self.movementManager.accelerometerData {
                self.label.text = String(data.acceleration.x)
            }
        
        }
    }


}

