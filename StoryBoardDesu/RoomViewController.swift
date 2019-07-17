//
//  RoomViewController.swift
//  StoryBoardDesu
//
//  Created by Ivan Sebastian on 16/07/19.
//  Copyright © 2019 Vivien. All rights reserved.
//

import UIKit

class RoomViewController: UIViewController {

    @IBOutlet weak var roomNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomNumber =  Int.random(in: 1000...9999)
        roomNumber.text = String(randomNumber)
       
    }
    

 

}
