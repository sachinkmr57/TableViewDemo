//
//  FirstViewController.swift
//  TableViewDemo
//
//  Created by Sachinkumar D on 13/07/18.
//  Copyright © 2018 Sachinkumar D. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

     @IBOutlet weak var tableView: UITableView!
    
     weak var tableViewinXib: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: 320, height: 400))
        self.view.addSubview(table)
        
        tableView = table
        tableView.backgroundColor = UIColor.red
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
        
//        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension FirstViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("User select row: \(indexPath.row) in section: \(indexPath.section)")
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 50
//    }
}

extension FirstViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "sachin")
        
        cell?.textLabel?.text = "section: \(indexPath.section) row: \(indexPath.row)"
        cell?.imageView?.image = UIImage(named: "profile")
        
        guard let unwrappedCell = cell else {
            let defaultCell = UITableViewCell(style: .value1, reuseIdentifier: "xxx")
            defaultCell.textLabel?.text = "DEfault cell"
            
            return defaultCell
        }
        
        return unwrappedCell
    }
    
}
