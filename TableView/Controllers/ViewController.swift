//
//  ViewController.swift
//  TableView
//
//  Created by sycf_ios on 2017/11/6.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var data: [CustomCellModel]!
    var thirdData: [ThirdCellModel]!
    var isAdd: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        data = [CustomCellModel]()
        thirdData = [ThirdCellModel]()
        let model = CustomCellModel(iconImageName: "1", title: "wtqrqr")
        for _ in 1...20 {
            data.append(model)
        }
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableViewAutomaticDimension
        
        
    }
    @IBAction func add(_ sender: Any) {
        isAdd = true
        DispatchQueue.global().async {
            let model = ThirdCellModel(iconName: "1", title: "ha'ha'ha'h'ha'ha'h'ha")
            self.thirdData.append(model)
            DispatchQueue.main.async {
                let indexPath = IndexPath(row: self.data.count + self.thirdData.count - 1, section: 0)
                self.tableView.insertRows(at: [indexPath], with: .bottom)
                self.tableView.reloadRows(at: [indexPath], with: .automatic)
                self.tableView.scrollToRow(at: indexPath, at: .bottom, animated: true)
            }
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count + thirdData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row+1 <=  data.count {
            if indexPath.row%2 == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "reusecell", for: indexPath) as! CustomTableViewCell
                cell.dataModel = data[indexPath.row]
                return cell
            }
            let cell = tableView.dequeueReusableCell(withIdentifier: "reusecell2", for: indexPath) as! SecondTableViewCell
            cell.title.text = String(indexPath.row.description)
            return cell
        }
        self.isAdd = false
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusecell3", for: indexPath) as! ThirdTableViewCell
        print(indexPath.row - data.count)
        cell.data = thirdData[indexPath.row - data.count]
        return cell
        
    }
}
