//
//  UITableView.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import UIKit

extension UITableView {
    var indexPaths: [IndexPath] {
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
        let topIndexPath = IndexPath(row: 0, section: 0)
        if topIndexPath.isInRange(of: self) {
            scrollToRow(at: topIndexPath, at: .top, animated: animated)
        }
    }
}
