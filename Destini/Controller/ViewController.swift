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
    
   
    var storyNumber = 0
   // var story = Story()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
       /* choiceButton2.setTitle(story[0].choice2, for: .normal)
         choiceButton1.setTitle(story[0].choice1, for: .normal)*/
    }
    
    
    
    let story = [Story(title: "you see a fork on the road", ch1: "turn left", ch2: "turn right"),
    Story(title: "you see a tiger", ch1: "shout for help", ch2: "play dead"),
    Story(title: "you found a treashure chest", ch1: "open it", ch2: "check for traps")]

  // let exapmle = Story(title: ["you see a fork on the road"], ch1: "turn left", ch2: "turn right")
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
       
            if userAnswer == story[storyNumber].choice1 {
                storyLabel.text = story[storyNumber + 1].storyzero
                choiceButton2.setTitle(story[1].choice2, for: .normal)
                choiceButton1.setTitle(story[1].choice1, for: .normal)
            }else if  userAnswer == story[storyNumber].choice2{
                choiceButton2.setTitle(story[2].choice2, for: .normal)
                               choiceButton1.setTitle(story[2].choice1, for: .normal)
                storyLabel.text = story[storyNumber + 2].storyzero
            }
        }
        
        
    func updateUI (){
        storyLabel.text = story[storyNumber].storyzero
        choiceButton2.setTitle(story[storyNumber].choice2, for: .normal)
        choiceButton1.setTitle(story[storyNumber].choice1, for: .normal)
    }
    
    
   
    

}

