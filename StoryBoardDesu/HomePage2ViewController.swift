//
//  HomePage2ViewController.swift
//  StoryBoardDesu
//
//  Created by Ivan Sebastian on 15/07/19.
//  Copyright © 2019 Vivien. All rights reserved.
//

import UIKit
import Foundation

class HomePage2ViewController: UIViewController {

    @IBOutlet weak var yeahBtn: UIButton!
    @IBOutlet weak var nameLbl: UILabel!
    var name = " "
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       nameLbl.text = name
        print("test1")
        yeahBtn.layer.cornerRadius = 20
    }
    
//    fileprivate func setupText(){
//        nameLbl.text = name
//    }


}
