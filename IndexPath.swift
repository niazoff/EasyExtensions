//
//  IndexPath.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import UIKit

extension IndexPath {
    func isInRange(of tableView: UITableView) -> Bool {
        return section <= (tableView.numberOfSections - 1) && row <= (tableView.numberOfRows(inSection: section) - 1)
    }
}
