//
//  ViewController.swift
//  LuizTable
//
//  Created by vini on 11/11/18.
//  Copyright © 2018 vini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameSurnameAge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let auxName = listOfPerson[i].name
        let auxSurname = listOfPerson[i].surname
        let auxAge = String(listOfPerson[i].age)
        nameSurnameAge.text = auxName + " " + auxSurname + " " + auxAge
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

