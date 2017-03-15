//
//  DefinitionViewController.swift
//  EmojiRef
//
//  Created by Tamilarasan Lakshmanan on 3/15/17.
//  Copyright © 2017 Tamilarasan Lakshmanan. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojilabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    var emoji = ""
    var label = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojilabel.text = emoji
        definitionLabel.text = label
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
