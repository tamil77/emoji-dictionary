//
//  ViewController.swift
//  EmojiRef
//
//  Created by Tamilarasan Lakshmanan on 3/14/17.
//  Copyright © 2017 Tamilarasan Lakshmanan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var theCoolTableView: UITableView!
    
    var emojis : [Emoji] = []
 
    var definition = ["Nerd","Mad","Vanakkam","Classic Smiley","Medic","Soccer","Car"]
    var indexRow = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theCoolTableView.dataSource = self
        theCoolTableView.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexRow = indexPath.row
        performSegue(withIdentifier: "moveSegue", sender: emojis[indexPath.row])
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!DefinitionViewController
        defVC.emoji = sender as!Emoji
//        defVC.label = definition[indexRow]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🤓"
        emoji1.category = "Smiley"
        emoji1.definition = "Nerd Face with reading glasses"
        emoji1.birthYear = 2010
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😡"
        emoji2.category = "Mad"
        emoji2.definition = "Mad Face"
        emoji2.birthYear = 2011
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🙏🏻"
        emoji3.category = "Welcome"
        emoji3.definition = "Vanakkam"
        emoji3.birthYear = 2015
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😀"
        emoji4.category = "Smiley"
        emoji4.definition = "A classic Smiley face"
        emoji4.birthYear = 2006
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "⛑"
        emoji5.category = "Medic"
        emoji5.definition = "Medic"
        emoji5.birthYear = 2012
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "⚽️"
        emoji6.category = "Prop"
        emoji6.definition = "A Soccer Ball"
        emoji6.birthYear = 2010
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🚗"
        emoji7.category = "Vehicles"
        emoji7.definition = "A cute little car"
        emoji7.birthYear = 2014
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6,emoji7]
    }
}

