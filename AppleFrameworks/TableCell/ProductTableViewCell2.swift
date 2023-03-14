//
//  ProductTableViewCell.swift
//  AppleFrameworks
//
//  Created by Reem Quhal on 14/02/2023.
//

import UIKit

class ProductTableViewCell2: UITableViewCell {


    @IBOutlet weak var productImg: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productDes: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
