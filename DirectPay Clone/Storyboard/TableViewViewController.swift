//
//  TableViewViewController.swift
//  DirectPay Clone
//
//  Created by BS1101 on 24/5/23.
//

import UIKit

class TableViewViewController: UIViewController {

    @IBOutlet weak var userInfoTable: UITableView!
    
    public var data: [userInformation] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userInfoTable.register(UINib.init(nibName: "UserInfoTableViewCell", bundle: Bundle(identifier: Bundle.main.bundlePath)), forCellReuseIdentifier: "UserInfoTableViewCell")
        
        
        self.userInfoTable.delegate = self
        self.userInfoTable.dataSource = self
        // Do any additional setup after loading the view.
    }
}

extension TableViewViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "UserInfoTableViewCell", for: indexPath) as? UserInfoTableViewCell{
            let userInformation = data[indexPath.row]
            cell.configure(with: userInformation)
            return cell
        }
        
        
        return UITableViewCell()
    }
    		
    
}
