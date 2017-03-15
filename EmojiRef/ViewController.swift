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
    
    var emojis = ["🤓","😡","🙏🏻","😀","⛑","⚽️","🚗"]
    var definition = ["Nerd","Mad","Vanakkam","Classic Smiley","Medic","Soccer","Car"]
    var indexRow = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theCoolTableView.dataSource = self
        theCoolTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexRow = indexPath.row
        performSegue(withIdentifier: "moveSegue", sender: emojis[indexPath.row])
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!DefinitionViewController
        defVC.emoji = sender as!String
        defVC.label = definition[indexRow]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

