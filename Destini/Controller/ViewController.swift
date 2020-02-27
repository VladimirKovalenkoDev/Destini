//
//  ViewController.swift
//  Destini
//
//  Created by Владимир Коваленко on 26.02.2020.
//  Copyright © 2020 Vladimir Kovalenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceButton2: UIButton!
    @IBOutlet weak var choiceButton1: UIButton!
    
    var storyzero = "You see a fork in the road."
    var choice1 = "Take a left."
    var choice2 =  "Take a right."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyzero
        choiceButton1.setTitle(choice1, for: .normal)
        choiceButton2.setTitle(choice2, for: .normal)
    }

    
    
    @IBAction func choiceMade(_ sender: UIButton) {
    }
    
    
    

}

