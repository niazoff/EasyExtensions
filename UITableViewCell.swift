//
//  UITableViewCell.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 11/8/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UITableViewCell {
    var tableView: UITableView? {
        return self.next(UITableView.self)
    }
    
    var indexPath: IndexPath? {
        return self.tableView?.indexPath(for: self)
    }
}
