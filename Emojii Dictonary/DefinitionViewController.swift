//
//  DefinitionViewController.swift
//  Emojii Dictonary
//
//  Created by Michael Baumgaertner on 18.12.17.
//  Copyright © 2017 Michael Baumgaertner. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var birthYear: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var EmojiLabel: UILabel!
    var emoji = Emoji()
var emojis = ["😀","😃","😄","🤪","🧐","😎","🤓","🤩","😜","😚"]
    @IBOutlet weak var definitionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        EmojiLabel.text = emoji.stringEmoji
        birthYear.text = "BirthYear: \(emoji.birthYear)"
        category.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
       
        
       
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
}
