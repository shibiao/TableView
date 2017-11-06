//
//  ThirdTableViewCell.swift
//  TableView
//
//  Created by sycf_ios on 2017/11/6.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import UIKit

class ThirdTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconView: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    var data: ThirdCellModel! {
        didSet {
            self.iconView.image = UIImage(named: data.iconName)
            self.title.text = data.title
        }
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
