//
//  TextCollectionViewCell.swift
//  Hoshiah
//
//  Created by Natanel Niazoff on 5/22/17.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import UIKit

protocol TextCellDelegate {
    var text: String? { get set }
}

class TextCollectionViewCell: UICollectionViewCell, UITextViewDelegate {
    var delegate: TextCellDelegate?
    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView.delegate = self
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 10
    }
    
    func textViewDidChange(_ textView: UITextView) {
        delegate?.text = textView.text
    }
}
