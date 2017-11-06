//
//  CutomCellModel.swift
//  TableView
//
//  Created by sycf_ios on 2017/11/6.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import Foundation

struct CustomCellModel {
    var iconImageName: String
    var title: String
    init(iconImageName: String, title: String) {
        self.iconImageName = iconImageName
        self.title = title
    }
}
