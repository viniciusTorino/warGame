//
//  TableViewController.swift
//  LuizTable
//
//  Created by vini on 11/11/18.
//  Copyright © 2018 vini. All rights reserved.
//

import UIKit

var i = 0

class Person {
    var name:String
    var surname:String
    var age:Int
    
    init(_ name: String, _ surname: String,_ age: Int){
        self.name = name
        self.surname  = surname
        self.age = age
    }
}

var listOfPerson:[Person] = []

class   TableViewController: UITableViewController{
    
    
        let joao = Person("Joao", "Silva", 22)
        let maria = Person("Maria", "Joaquina", 19)
        let pedro = Person("Pedro", "Rodrigues", 20)
        let juliano = Person("Juliano", "Santos", 30)
        let gabriela = Person("Gabriela", "Pereira", 18)
    
        override func viewDidLoad() {
            super.viewDidLoad()
            listOfPerson = [joao , maria, pedro, juliano, gabriela]
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            
        }
    
    //funcao da tabela e declarada e os itens sao carrefados  >>
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return listOfPerson.count
        }
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            let auxName = listOfPerson[indexPath.row].name
            let auxSurname = listOfPerson[indexPath.row].surname
            let auxAge = String(listOfPerson[indexPath.row].age)
            cell.textLabel?.text = auxName + " " + auxSurname + " " + auxAge
            return(cell)
        }
    //ate aqui <<
    // trecho onde o direcionamento e feito >> ViewControler.swift
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        i = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
        
    }
}

