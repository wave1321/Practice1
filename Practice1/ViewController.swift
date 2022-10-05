//
//  ViewController.swift
//  Practice1
//
//  Created by Admin on 05.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    let ourDrawSwtich = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.label1.text = "NIL"
        
        self.ourDrawSwtich.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
        self.view.addSubview(self.ourDrawSwtich)
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Our first action element
    @IBAction func actionButton(_ sender: Any) {
        
        ourAlertOnPracticeFunction(ourAlertTitle: "Alert!", ourAlertMessage: "GO?", ourAlertStyle: .alert)
        
    }
    
    //MARK: - Our first func
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

