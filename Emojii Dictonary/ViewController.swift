//
//  ViewController.swift
//  Emojii Dictonary
//
//  Created by Michael Baumgaertner on 18.12.17.
//  Copyright © 2017 Michael Baumgaertner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    

    @IBOutlet weak var tableview1: UITableView!
    
    var emojis : [Emoji] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defV = segue.destination as! DefinitionViewController
        defV.emoji = sender as! Emoji
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
        tableview1.dataSource = self
        tableview1.delegate = self
        emojis = makeEmojiArray()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() ->  [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.category = "Smiley"
        emoji1.birthYear = 2010
        emoji1.definition = "A smiling face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😃"
        emoji2.category = "Smiley"
        emoji2.birthYear = 2011
        emoji2.definition = "A smiling face with open eyes"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😄"
        emoji3.category = "Smiley"
        emoji3.birthYear = 2012
        emoji3.definition = "A smiling face with nearly closed eyes"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤪"
        emoji4.category = "Smiley"
        emoji4.birthYear = 2012
        emoji4.definition = "A comic face"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🧐"
        emoji5.category = "Smiley"
        emoji5.birthYear = 2012
        emoji5.definition = "A concerned face which is not sure what to think of this"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😚"
        emoji6.category = "Smiley"
        emoji6.birthYear = 2014
        emoji6.definition = "A kissing face"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
        
        

}

