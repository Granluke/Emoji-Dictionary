//
//  DefinitionViewController.swift
//  Emojii Dictonary
//
//  Created by Michael Baumgaertner on 18.12.17.
//  Copyright © 2017 Michael Baumgaertner. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var EmojiLabel: UILabel!
    var emoji = "NO EMOJI"
var emojis = ["😀","😃","😄","🤪","🧐","😎","🤓","🤩","😜","😚"]
    @IBOutlet weak var definitionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
EmojiLabel.text = emoji
        if emoji == emojis[0] {
            definitionLabel.text = " A smiling face"
        }
        if emoji == emojis[1] {
            definitionLabel.text = " A smiling face with open eyes"
        }
        if emoji == emojis[2] {
            definitionLabel.text = " A smiling face with nearly closed eyes"
        }
        if emoji == emojis[3] {
            definitionLabel.text = " A face which is making fun of something"
        }
        if emoji == emojis[4] {
            definitionLabel.text = " A face which is not 100% persuaded"
        }
        if emoji == emojis[5] {
            definitionLabel.text = " A smiling face with sunglasses"
        }
        if emoji == emojis[6] {
            definitionLabel.text = " A nerdy face"
        }
        if emoji == emojis[7] {
            definitionLabel.text = " A smiling face with star eyes"
        }
        if emoji == emojis[8] {
            definitionLabel.text = " A face which shows the tongue"
        }
        if emoji == emojis[9] {
            definitionLabel.text = " A kissing face"
        }
        
       
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
}
