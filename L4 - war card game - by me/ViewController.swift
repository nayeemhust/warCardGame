//
//  ViewController.swift
//  L4 - war card game - by me
//
//  Created by Nayeem Nazmul on 2020/7/28.
//  Copyright © 2020 Nayeem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 @IBOutlet weak var LeftImageView: UIImageView!
    @IBOutlet weak var RightImageView: UIImageView!
    @IBOutlet weak var LeftScoreLabel: UILabel!
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func DealTapped(_ sender: Any) {
        
        let leftImage = Int.random(in: 2...14)
        let rightImage = Int.random(in: 2...14)
     
        LeftImageView.image = UIImage(named: "card\(leftImage)")
        RightImageView.image = UIImage(named: "card\(rightImage)")
        
        if leftImage > rightImage {
//            left side wins
            leftscore += 2
            LeftScoreLabel.text = String(leftscore)
        }
        else if leftImage < rightImage {
//            right side wins
            rightscore += 1
            RightScoreLabel.text = String(rightscore)
        }
        else {
//            Tie
        }
    }
}

