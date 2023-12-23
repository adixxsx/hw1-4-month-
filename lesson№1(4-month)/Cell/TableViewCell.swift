//
//  TableViewCell.swift
//  lesson№1(4-month)
//
//  Created by user on 19/12/23.
//

import UIKit


class TableViewCell: UIViewController {
    
    private let BGView: UIView = {
        let view = UIView()
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
}
