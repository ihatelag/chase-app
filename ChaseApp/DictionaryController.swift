//
//  DictionaryController.swift
//  ChaseApp
//
//  Created by Antonio M. Linhart on 11/2/17.
//  Copyright © 2017 Antonio M. Linhart. All rights reserved.
//

import UIKit

class DictionaryController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var words = [String]()
    var definitions = [String]()
    @IBOutlet var segControl: UISegmentedControl!
    @IBOutlet var tableView: UITableView!
    
    
    
    @IBAction func changeSeg(_ sender: Any) {
        
        if segControl.selectedSegmentIndex == 0 {
            //testField.text = "yo yo yo"
            
        }
        if segControl.selectedSegmentIndex == 1 {
            //testField.text = "no no no"
            //wordField.text = ""
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return words.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellWord", for: indexPath)
        
        let word = words[indexPath.row]
        let def = definitions[indexPath.row]
        
        cell.textLabel?.text = word + ": " + def
        cell.textLabel?.numberOfLines = 0
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addWordDefs(word: "lit", def: "Exciting")
        addWordDefs(word: "lol", def: "Laughing out loud")
        addWordDefs(word: "bet", def: "Yes or I agree")
        addWordDefs(word: "banger", def: "A big party")
        addWordDefs(word: "dope", def: "Cool or very good")
        addWordDefs(word: "good vibes", def: "Happy feelings")
        addWordDefs(word: "dm", def: "Direct message")
        addWordDefs(word: "insta", def: "Instagram")
        addWordDefs(word: "finsta", def: "Fake instagram - used to post embarassing photos")
        addWordDefs(word: "squad", def: "A crew, posse, gang: a group of friends, usually with a common identity or interest")
        addWordDefs(word: "yeet", def: "Term used to express excitement")
        addWordDefs(word: "fleek", def: "Used to describe when something is 'on point")
        addWordDefs(word: "whip", def: "A dance move or term used when something is cool")
        addWordDefs(word: "swag", def: "Term used for the word 'cool'")
        addWordDefs(word: "burn", def: "An exclamation used to imply that one has just been insulted with no chance of rebuttal")
        addWordDefs(word: "roast", def: "To humorously mock or humiliate someone with a well-timed joke, diss, or comeback")
        addWordDefs(word: "boom roasted", def: "A synonym to burn, usually stated after an insult" )
        addWordDefs(word: "swerve", def: "To dismiss or say  no to a request among peers")
        addWordDefs(word: "GOAT" , def: "Greatest of all time")
        addWordDefs(word: "RT", def: "Something you agree with")
        addWordDefs(word: "turnt", def: "general excitement or craziness")
        addWordDefs(word: "bae", def: "Significant other")
        addWordDefs(word: "hype", def: "Getting excited for an event or something was crazy")
        addWordDefs(word: "hoco", def: "Homecoming, a school dance held at the beginning of the school year or in the fall")
        addWordDefs(word: "spirit week", def: "The week before a dance or big school event to get everyone excited")
        addWordDefs(word: "joco", def: "An abbreviation of Johnson County")
        addWordDefs(word: "hangry", def: "Getting hangry or annoyed because you are so hungry")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addWordDefs(word: String, def: String){
        words.append(word)
        definitions.append(def)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
