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
    
   
    
    var storyBrain = StoryBrain()
    var storyNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
         
    }
    
    
    
  
  // let exapmle = Story(title: ["you see a fork on the road"], ch1: "turn left", ch2: "turn right")
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI ()
        
        
        }
    
    
        
       func updateUI (){
        
        storyLabel.text = storyBrain.getStoryText()
        choiceButton2.setTitle(storyBrain.getChoice2(), for: .normal)
        choiceButton1.setTitle(storyBrain.getChoice1(), for: .normal)
    }
    
    
   
    

}

