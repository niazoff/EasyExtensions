//
//  UITableView.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UITableView {
    var allIndexPaths: [IndexPath] {
        var indexPaths = [IndexPath]()
        for section in 0..<numberOfSections {
            for row in 0..<numberOfRows(inSection: section) {
                indexPaths.append(IndexPath(row: row, section: section))
            }
        }
        return indexPaths
    }
    
    func reloadData(with animation: UITableViewRowAnimation) {
        reloadSections(IndexSet(integersIn: 0..<numberOfSections), with: animation)
    }
    
    func scrollToTop(animated: Bool) {
        scrollToRow(at: IndexPath(row: 0, section: 0), at: .top, animated: animated)
    }
}
