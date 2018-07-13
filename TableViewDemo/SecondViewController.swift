//
//  SecondViewController.swift
//  TableViewDemo
//
//  Created by Sachinkumar D on 13/07/18.
//  Copyright © 2018 Sachinkumar D. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
        
    @IBOutlet weak var secondTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SecondViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("User select row: \(indexPath.row) in section: \(indexPath.section)")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
}

extension SecondViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section: \(section+1)"
        //        if section == 0 {
        //            return "First Section"
        //        }
        //
        //        if section == 1 {
        //            return "Second Section"
        //        }
        //
        //        return nil
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell") as? ProfileTableViewCell
        
        if let c = cell {
            c.profileImageView.image = #imageLiteral(resourceName: "profile")
            c.nameLabel.text = "user \(indexPath.row)"
            c.titleLabel.text = "I am from \(indexPath.section)"
            c.notesTextView.text = "bla bal alahsd jfdskj fdskfdks fkdsfkds fhkdshfk dshfk dshfkjd ss"
        }
        
        return cell ?? UITableViewCell()
    }
    
}
