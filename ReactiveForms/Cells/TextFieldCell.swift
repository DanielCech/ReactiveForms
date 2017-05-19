//
//  TextFieldCell.swift
//  ReactiveForms
//
//  Created by Dan on 19.05.17.
//  Copyright © 2017 STRV. All rights reserved.
//

import UIKit

class TextFieldCell: UITableViewCell, DCTableViewCell, ReusableView {
    typealias ViewModel = String


    @IBOutlet fileprivate weak var _titleLabel: UILabel!
    @IBOutlet fileprivate weak var _textField: UITextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateCell(viewModel: ViewModel, delegate: Any?) {
//        guard let unwrappedViewModel = viewModel as? ViewModel else { return }
        
        _titleLabel.text = viewModel
    }
    
}
