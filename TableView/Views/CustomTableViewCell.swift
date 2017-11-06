//
//  CustomTableViewCell.swift
//  TableView
//
//  Created by sycf_ios on 2017/11/6.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    var dataModel: CustomCellModel! {
        didSet {
            self.iconImage.image = UIImage(named: dataModel.iconImageName)
            self.title.text = dataModel.title
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
