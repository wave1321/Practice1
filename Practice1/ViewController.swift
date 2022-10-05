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
    let ourDrawSwtich2 = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.label1.text = "NIL"
        
        //Draw Switch and use #selector
        self.ourDrawSwtich.frame = CGRect(x: 100, y: 200, width: 0, height: 0)
        self.view.addSubview(self.ourDrawSwtich)
        self.ourDrawSwtich.addTarget(self, action: #selector(ourSwitchChangeAction(paramTarget:)), for: .valueChanged)
        
        //Put Switch2 on frame
        self.ourDrawSwtich2.frame = CGRect.zero
        self.ourDrawSwtich2.center = self.view.convert(self.view.center, from: self.ourDrawSwtich)
        self.view.addSubview(self.ourDrawSwtich2)
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Our first action element
    @IBAction func actionButton(_ sender: Any) {
        
        ourAlertOnPracticeFunction(ourAlertTitle: "Alert!", ourAlertMessage: "GO?", ourAlertStyle: .alert)
        
    }
    
    //MARK: - Our funcs
    func ourAlertOnPracticeFunction (ourAlertTitle: String, ourAlertMessage: String, ourAlertStyle: UIAlertController.Style) {
        
        let actionController = UIAlertController(title: ourAlertTitle, message: ourAlertMessage,
                                                 preferredStyle: ourAlertStyle)
        let actionOnActionController = UIAlertAction(title: "OK", style: .cancel) { (actionOnActionController) in
            self.label1.text = "Done"
        }
        
        actionController.addAction(actionOnActionController)
        self.present(actionController, animated: true)
    }
    
                // for #selector
    @objc func ourSwitchChangeAction(paramTarget: UISwitch) {
       print("We are use - ", paramTarget)
        
        if paramTarget.isOn {
            print("and is on")
        } else {
            print("and is off")
        }
    }
    
    
}

