//
//  UITableView.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UITableView {
    static var defaultLeftInset: CGFloat = 15
    
    var allIndexPaths: [IndexPath] {
        var indexPaths = [IndexPath]()
        for section in 0..<self.numberOfSections {
            for row in 0..<self.numberOfRows(inSection: section) {
                indexPaths.append(IndexPath(row: row, section: section))
            }
        }
        return indexPaths
    }
    
    func reloadData(with animation: RowAnimation) {
        self.reloadSections(IndexSet(integersIn: 0..<self.numberOfSections), with: animation)
    }
    
    func reloadDataKeepingSelectedRow() {
        let selectedRowIndexPath = self.indexPathForSelectedRow
        self.reloadData()
        self.selectRow(at: selectedRowIndexPath, animated: false, scrollPosition: .none)
    }
    
    func scrollToTop(animated: Bool) {
        let topIndexPath = IndexPath(row: 0, section: 0)
        guard allIndexPaths.count > 0 else { return }
        self.scrollToRow(at: topIndexPath, at: .top, animated: animated)
    }
    
    func deselectSelectedRow(animated: Bool) {
        guard let indexPath = self.indexPathForSelectedRow else { return }
        self.deselectRow(at: indexPath, animated: animated)
    }
}
