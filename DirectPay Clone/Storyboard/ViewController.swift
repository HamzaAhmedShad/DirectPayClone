//
//  ViewController.swift
//  DirectPay Clone
//
//  Created by BS1101 on 24/5/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var phoneNumber: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var RememberMe: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerNowBTN(_ sender: UIButton){
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "RegistrationViewController") as? RegistrationViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

