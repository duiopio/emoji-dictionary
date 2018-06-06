//
//  DefinitionViewController.swift
//  Dizionario Emoji
//
//  Created by Filippo De Togni on 06/06/18.
//  Copyright © 2018 DET. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "NO EMOJI"
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            definitionLabel.text = "Il più semplice degli emoji!"
        }
        
        if emoji == "🧐" {
            definitionLabel.text = "Una persona intellettuale."
        }
        
        if emoji == "🙃" {
            definitionLabel.text = "Nessuno sa quale sia la definizione corretta."
        }
        
        if emoji == "🤔" {
            definitionLabel.text = "Una persona confusa."
        }
        
        if emoji == "🤡" {
            definitionLabel.text = "Il tuo amico o la tua amica più divertente!"
        }
        
        if emoji == "🤯" {
            definitionLabel.text = "Per quando capisci qualcosa di difficile!"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
