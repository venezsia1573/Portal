//
//  ViewController.swift
//  xuexi
//
//  Created by Venezsia1573 on 2020/04/25.
//  Copyright © 2020 Venezsia1573. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Main.image = UIImage(named: "sub.jpg")
    }
    

    
    
    @IBOutlet weak var Main: UIImageView!
    
    @IBOutlet weak var intoXuexi: UIButton!
    
    @IBAction func intoXX (_ sender: UIButton){
        
        let QA = storyboard?.instantiateViewController(identifier: "QA_vc") as! QAViewController
        present(QA, animated: true)

        
        
    }
    

}

