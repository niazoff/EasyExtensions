//
//  DateCollectionViewCell.swift
//  Hoshiah
//
//  Created by Natanel Niazoff on 5/22/17.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import UIKit

protocol DateCellDelegate {
    var date: Date? { get set }
}

class DateCollectionViewCell: UICollectionViewCell {
    var delegate: DateCellDelegate?
    @IBOutlet weak var textField: UITextField! {
        didSet {
            let datePickerView = UIDatePicker()
            datePickerView.datePickerMode = .time
            textField.inputView = datePickerView
            datePickerView.addTarget(self, action: #selector(DateCollectionViewCell.datePickerValueChanged(sender:)), for: .valueChanged)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 10
    }
    
    func datePickerValueChanged(sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .short
        textField.text = dateFormatter.string(from: sender.date)
        delegate?.date = sender.date
    }
}
