//
//  ViewControllerTableDataSource.swift
//  ContactApp
//
//  Created by ievgenii on 6/17/19.
//  Copyright © 2019 hw. All rights reserved.
//

import UIKit

class ViewControllerTableDataSource: NSObject {
    
    var data = [String]()
    
}

extension ViewControllerTableDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: String(describing: MyCustomCell.self),
            for: indexPath
        )
        let i = data[indexPath.row]
        cell.textLabel?.text = i
        cell.detailTextLabel?.text = "Detail text"
        cell.imageView?.image = UIImage(named: "image")
        return cell
    }
}
