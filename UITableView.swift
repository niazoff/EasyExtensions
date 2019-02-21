//
//  UITableView.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UITableView {
    static var standardLeftInset: CGFloat = 15
    
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
    
    func scrollToTop(animated: Bool) {
        self.scrollToRow(at: IndexPath(row: 0, section: 0), at: .top, animated: animated)
    }
    
    func deselectSelectedRow() {
        guard let indexPath = self.indexPathForSelectedRow else { return }
        self.deselectRow(at: indexPath, animated: true)
    }
}
