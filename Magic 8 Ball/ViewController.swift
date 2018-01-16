//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by TECNOCEN on 15/1/18.
//  Copyright © 2018 Jesus Guzman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewBall: UIImageView!
    
    var randomBall = 0
    
    let ballArray = [
        "ball1",
        "ball2",
        "ball3",
        "ball4",
        "ball5",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        actualizarImagenBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func preguntarBotonPress(_ sender: UIButton) {
        actualizarImagenBall()
    }
    
    func actualizarImagenBall() {
        
        randomBall = Int(arc4random_uniform(5))
        imageViewBall.image = UIImage(named: "ball\(randomBall)")
        
    }
    
    //Con esta funcion sobreescrita cuando el usuario acabe de sacudir
    // su dispositivo
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        actualizarImagenBall()
    }
    

}

