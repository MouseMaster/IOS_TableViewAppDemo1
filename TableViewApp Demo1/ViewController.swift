//
//  ViewController.swift
//  TableViewApp Demo1
//
//  Created by MouseMaster on 2018/3/4.
//  Copyright © 2018年 MouseMaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let iosGroupMember = ["Natalie", "Beal", "Asa", "Chuck", "鳥窩", "Toby"]
    let wednesdayMember = ["Ian","Vek","Jay","小史"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
      return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
          return iosGroupMember.count
        }else{
          return wednesdayMember.count
        }
      
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if indexPath.section == 0{
            cell.textLabel?.text = iosGroupMember[indexPath.row]
        }else{
            cell.textLabel?.text = wednesdayMember[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Saturday IOS Members"
        }else{
            return "Wednesday IOS Members"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

