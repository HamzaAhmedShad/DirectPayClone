//
//  RegistrationViewController.swift
//  DirectPay Clone
//
//  Created by BS1101 on 24/5/23.
//

import UIKit

class RegistrationViewController: UIViewController {
    @IBOutlet weak var emailInput: UITextField!
    
    @IBOutlet weak var phoneNumberInput: UITextField!
    
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBOutlet weak var referralCodeInput: UITextField!
    
    @IBOutlet weak var mainRegisterBTN: UIButton!
    
    @IBOutlet weak var agreeCheck: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBackBTN(_ sender: UIButton) {
        _ = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController") as? ViewController
       self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func registerBTN(_ sender: UIButton) {
        var email = emailInput.text ?? ""
        var phoneNumber = phoneNumberInput.text ?? ""
        var password = passwordInput.text ?? ""
        var refer = referralCodeInput.text ?? ""
        
        var userInfo1 = userInformation(field: "Email", userInput: email)
        var userInfo2 = userInformation(field: "Phone", userInput: phoneNumber)
        var userInfo3 = userInformation(field: "Pass", userInput: password)
        var userInfo4 = userInformation(field: "Refer", userInput: refer)
        
        var newData: [userInformation] = []
        
        newData.append(userInfo1)
        newData.append(userInfo2)
        newData.append(userInfo3)
        newData.append(userInfo4)
        
        
        if let tableViewVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "TableViewViewController") as? TableViewViewController {
            tableViewVC.data = newData
            self.navigationController?.pushViewController(tableViewVC, animated: true)
        }
         
    }
    
    
}
