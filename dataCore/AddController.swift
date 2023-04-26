//
//  AddController.swift
//  dataCore
//
//  Created by Mohan K on 13/03/23.
//

import UIKit

class AddController: UIViewController {

    @IBOutlet weak var cmpanyText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTap(_ sender: Any) {
        
        if  (cmpanyText.text != nil) && cmpanyText.text != ""
        { todoList?.append(cmpanyText.text!)
            cmpanyText.text = ""
            cmpanyText.placeholder = "add company ?"
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
