//
//  InfoCollectionViewCell.swift
//  Hoshiah
//
//  Created by Natanel Niazoff on 5/23/17.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import UIKit

protocol InfoCellDelegate {
    var title:  String? { get set }
    var selectedType: MinyanType? { get set }
}

class InfoCollectionViewCell: UICollectionViewCell, UIPickerViewDataSource, UIPickerViewDelegate {
    var delegate: InfoCellDelegate?
    @IBOutlet weak var titleTextField: UITextField! {
        didSet {
            titleTextField.addTarget(self, action: #selector(InfoCollectionViewCell.textFieldEditingChanged(sender:)), for: .editingChanged)
        }
    }
    @IBOutlet weak var typeTextField: UITextField! {
        didSet {
            let pickerView = UIPickerView()
            pickerView.dataSource = self
            pickerView.delegate = self
            typeTextField.inputView = pickerView
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 10
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return MinyanType.strings.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return MinyanType.strings[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        typeTextField.text = MinyanType.strings[row]
        delegate?.selectedType = MinyanType.from(string: MinyanType.strings[row])
    }
    
    func textFieldEditingChanged(sender: UITextField) {
        delegate?.title = sender.text
    }
}
