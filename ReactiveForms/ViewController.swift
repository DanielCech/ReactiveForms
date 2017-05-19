//
//  ViewController.swift
//  ReactiveForms
//
//  Created by Dan on 19.05.17.
//  Copyright © 2017 STRV. All rights reserved.
//

import UIKit

enum MenuCells: String, CellTypeDescribing {
    case menuCell
    case textFieldCell
}

class ViewController: DCTableSupportedViewController {

    @IBOutlet fileprivate weak var _tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do {
            try registerTableView(_tableView)
        }
        catch {
            print("Registration error")
        }
        
        _tableView.registerCellNib(MenuCell.self)
        _tableView.registerCellNib(TextFieldCell.self)
        createDataSourceForTable(_tableView)
        _tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createDataSourceForTable(_ tableView: UITableView) {
        
        super.createDataSourceForTable(tableView)
        
        let sectionDescription = SectionDescription(
            sectionID: 0,
            footerHeight: { _ in 0.01 }
        )
        
        let cellDescriptions = [
            CellDescription(
                cellID: 0,
                cellType: MenuCells.textFieldCell,
                viewModel: "Random Table Updates",
                didSelectCell: { [weak self] _, _, indexPath in
                    self?._tableView.deselectRow(at: indexPath as IndexPath, animated: true)
//                    self?.performSegue(withIdentifier: "ShowRandomUpdates", sender: self)
                }
            ),
            CellDescription(
                cellID: 1,
                cellType: MenuCells.textFieldCell,
                viewModel: "Custom Table Updates",
                didSelectCell: { [weak self] _, _, indexPath in
                    self?._tableView.deselectRow(at: indexPath as IndexPath, animated: true)
//                    self?.performSegue(withIdentifier: "ShowCustomUpdates", sender: self)
                }
            ),
            CellDescription(
                cellID: 2,
                cellType: MenuCells.textFieldCell,
                viewModel: "Infinite Loading List",
                didSelectCell: { [weak self] _, _, indexPath in
                    self?._tableView.deselectRow(at: indexPath as IndexPath, animated: true)
//                    self?.performSegue(withIdentifier: "ShowInfiniteList", sender: self)
                }
            )
        ]
        
        self.tableView(tableView, addSection: sectionDescription, withCells: cellDescriptions)
    }


}

