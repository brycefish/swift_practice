//
//  EmojiTableViewController.swift
//  project test
//
//  Created by Bryce Fish on 5/27/23.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    
    var emojis: [Emoji] = [
    Emoji(symbol: "👍🏽", name: "Thumbs up", description: "A thumb", usage: "positive afirmmation"),
    Emoji(symbol: "😊", name: "a smile", description: "a smiley face with ...", usage: "if you are happy..."),
    Emoji(symbol: "😂", name: "Timberlake", description: "a smiley face with tears", usage: "happy embarassed"),
    Emoji(symbol: "🤣", name: "ROTFL", description: "a smiley face with ...", usage: "if you are happy..."),
    Emoji(symbol: "🤷🏽", name: "Shrug", description: "a smiley face with ...", usage: "if you are happy..."),
    Emoji(symbol: "😅", name: "lol", description: "a grining face with sweat", usage: "if you are happy..."),
    Emoji(symbol: "😇", name: "angel", description: "a smiley face with a halo", usage: "if you have been bad"),
    Emoji(symbol: "👆🏼", name: "THIS", description: "a hand with one finger pointing up", usage: "to agree"),
    
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // This func is auto-generated with a comment here. changed return 0 to return 1
        // technically could remove completely
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // function and comment below are also auto-generated (changed return from "0" to "emojis.count"
        // .count keeps updates # of rows at runtime
        //
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)
        // Configure the cell...
        let emoji = emojis[indexPath.row]

        var content = cell.defaultContentConfiguration()
        content.text = "\(emoji.symbol) - \(emoji.name)"
        content.secondaryText = emoji.description
        cell.contentConfiguration = content
        cell.showsReorderControl = true
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        print("\(emoji.symbol) \(indexPath)")
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let moveEmoji = emojis.remove(at: fromIndexPath.row)
        emojis.insert(moveEmoji, at: to.row)

    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
