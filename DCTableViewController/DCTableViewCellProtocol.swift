//
//  DCTableViewCellProtocol.swift
//  DCTableViewController
//
//  Created by Dan on 11.09.16.
//  Copyright © 2016 Dan. All rights reserved.
//

import UIKit
import ReactiveSwift
import enum Result.NoError

protocol DCTableViewCellProtocol {
    func updateCell(viewModel: Any, delegate: Any?)
}

extension DCTableViewCellProtocol {
    
    func updateCell(viewModel: Any, delegate: Any? = nil)
    {
        //Implement in derived cells
    }
}

protocol DCTableViewCell: DCTableViewCellProtocol {
    associatedtype ViewModel
    
}

////////////////////////////////////////////////////////////////

protocol ReactiveFormCell: DCTableViewCell {
    associatedtype ValueModel
    
    var valueChangedSignal: Signal<ValueModel, NoError> { get set }
    var valueChangedObserver: Observer<ValueModel, NoError> { get set }
    
//    let (valueChangedSignal, valueChangedObserver) = Signal<ValueModel, NoError>.pipe() { get set }
//    var valueCommitedSignal: Signal<ValueModel, NoError> { get set }
    
    func initReactive()
}

extension ReactiveFormCell {
//    var valueChangedSignal: Signal<ValueModel, NoError>
//    var valueChangedObserver: Observer<ValueModel, NoError>
    
    func initReactive() {
//        (valueChangedSignal, valueChangedObserver) = Signal<ValueModel, NoError>.pipe()
    }
}




