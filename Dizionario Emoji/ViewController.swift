//
//  ViewController.swift
//  Dizionario Emoji
//
//  Created by Filippo De Togni on 05/06/18.
//  Copyright © 2018 DET. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var mainTableView: UITableView!
    
    var emojis = ["😀","🙃","🧐","🤔","🤡","🤯"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainTableView.dataSource = self
        mainTableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count // Ci sono tante righe del TableView quanti sono gli elementi dell'array. Geniale.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell() // Crea una variabile che contiene gli elementi base della UITableViewCell
        cell.textLabel?.text = emojis[indexPath.row] // Cambia il valore della cella in quello di un elemento dell'array
        return cell // Mostra il contenuto della cella
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) // Deseleziona la cella che abbiamo cliccato
        let emoji = emojis[indexPath.row] // Crea una variabile che acquisisce lo stesso valore dell'elemento selezionato
        performSegue(withIdentifier: "moveSegue", sender: emoji) // Attiva il "segue" e manda il valore emoji al secondo viewController
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
        let dVC = segue.destination as! DefinitionViewController
        dVC.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

