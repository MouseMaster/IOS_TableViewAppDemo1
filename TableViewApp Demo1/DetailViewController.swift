//
//  DetailViewController.swift
//  TableViewApp Demo1
//
//  Created by MouseMaster on 2018/3/9.
//  Copyright © 2018年 MouseMaster. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var infoFromViewOne:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = infoFromViewOne
        
        if let okFileName = infoFromViewOne{
        myImageView.image = UIImage(named: okFileName)
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
