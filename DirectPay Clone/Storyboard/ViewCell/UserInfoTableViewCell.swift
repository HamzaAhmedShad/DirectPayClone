//
//  UserInfoTableViewCell.swift
//  DirectPay Clone
//
//  Created by BS1101 on 25/5/23.
//

import UIKit

class UserInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var field: UILabel!
    
    @IBOutlet weak var userInput: UILabel!
    
    func configure(with userInformation: userInformation){
        field.text = userInformation.field
        userInput.text = userInformation.userInput
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
