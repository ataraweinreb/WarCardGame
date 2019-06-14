//
//  ViewController.swift
//  WarGame
//
//  Created by Tara Weinreb on 6/13/19.
//  Copyright © 2019 Tara Weinreb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCard: UIImageView!
    @IBOutlet weak var rightCard: UIImageView!
    
    @IBOutlet weak var leftScore: UILabel!
    @IBOutlet weak var rightScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var lScore = 0, rScore = 0
    @IBAction func dealTapped(_ sender: UIButton) {
        let l = Int.random(in: 2...14)
        let r = Int.random(in: 2...14)
        if (l < r) {
            rScore += 1
            
        } else if (r < l) {
            lScore += 1
            
        } else {
            rScore += 1
            lScore += 1
        }
        leftCard.image = UIImage(named: "card\(l)")
        rightCard.image = UIImage(named: "card\(r)")
        leftScore.text = String(lScore)
        rightScore.text = String(rScore)
    }
    
}

