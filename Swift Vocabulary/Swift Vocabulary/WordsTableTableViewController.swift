//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Lambda_School_Loaner_254 on 1/20/20.
//  Copyright © 2020 Rebecca Roshon. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    var vocabWords: [VocabularyWord] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    
    // MARK: - Table view data source

   
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let vocabWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabWord

        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let definitionVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow else {
                return
            }
            
            let vocabWord = vocabWords[indexPath.row]
            
            definitionVC.vocabWord = vocabWord
        }
    }
}

