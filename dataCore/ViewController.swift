//
//  ViewController.swift
//  dataCore
//
//  Created by Mohan K on 13/03/23.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var companyTable: UITableView!
  
//    let context = (UIApplication.shared.delegate as!AppDelegate).persistentContainer.viewContext
//
//    var item:[Company]?
//
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setuptable()
//        fetchCompany()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        companyTable.reloadData()
    }
//    @IBAction func addTapped(_ sender: Any) {
//        let alert = UIAlertController(title: "Add Person", message: "companydata", preferredStyle: .alert)
//
//        alert.addTextField()
//        alert.addTextField()
//        alert.addTextField()
//        alert.addTextField()
//
//        let submitButton = UIAlertAction(title: "Add", style: .default) { (action) in
//            let idtextField = alert.textFields![0]
//            let locationTextField = alert.textFields![1]
//            let nametextField = alert.textFields![2]
//            let shifttextField = alert.textFields![3]
//
//            let newPerson = Company(context: self.context)
//            newPerson.id = 00
//            newPerson.location = locationTextField.text
//            newPerson.name = nametextField.text
//            newPerson.shift = shifttextField.text
//            do {
//                try self.context.save()
//            }
//            catch{
//
//            }
//            self.fetchCompany()
//        }
//        alert.addAction(submitButton)
//        self.present(alert, animated:  true, completion: nil)
//    }
    func setuptable(){
        companyTable.delegate = self
        companyTable.dataSource = self
        DispatchQueue.main.async {
            self.companyTable.reloadData()
        }
    }

}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        if let todo = todoList {
            cell.textLabel?.text = todo[indexPath.row]
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let todo = todoList {
            return todo.count
        }else {
            return 0
        }
    
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            todoList?.remove(at: indexPath.row)
            companyTable.reloadData()
            
        }
        
    }
}
