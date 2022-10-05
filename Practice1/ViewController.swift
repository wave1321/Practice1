//
//  ViewController.swift
//  Practice1
//
//  Created by Admin on 05.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.label1.text = "NIL"
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButton(_ sender: Any) {
        
        ourAlertOnPracticeFunction(ourAlertTitle: "Alert!", ourAlertMessage: "GO?", ourAlertStyle: .alert)
        
    }
    
    func ourAlertOnPracticeFunction (ourAlertTitle: String, ourAlertMessage: String, ourAlertStyle: UIAlertController.Style) {
        
        let actionController = UIAlertController(title: ourAlertTitle, message: ourAlertMessage,
                                                 preferredStyle: ourAlertStyle)
        let actionOnActionController = UIAlertAction(title: "OK", style: .cancel) { (actionOnActionController) in
            self.label1.text = "Done"
        }
        
        actionController.addAction(actionOnActionController)
        self.present(actionController, animated: true)
    }
    
    
}

