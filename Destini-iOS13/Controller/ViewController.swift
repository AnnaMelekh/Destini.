//
//  ViewController.swift
//  Destini-iOS13
//
// by Anna M//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
           
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        storyBrain.nextStory(userChoice: userChoice)
        
        updateUI()
    }
    func updateUI() {
        storyLabel.text = storyBrain.getStoryText()
        choice1Button.setTitle(storyBrain.getChoiceText(choiceNumber: 1), for: .normal)
        choice2Button.setTitle(storyBrain.getChoiceText(choiceNumber: 2), for: .normal)
        
    }
}

