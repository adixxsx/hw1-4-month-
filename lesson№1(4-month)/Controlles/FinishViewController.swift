//
//  FinishViewController.swift
//  lesson№1(4-month)
//
//  Created by user on 12/12/23.
//

import UIKit

class FinishViewController: UIViewController {
    
    
    private let successView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "success 1")
        view.layer.cornerRadius = 175
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let success: UILabel = {
        let label = UILabel()
        label.text = "Success'"
        label.font = .systemFont(ofSize: 30, weight: .regular)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    var data: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.backgroundColor = UIColor(red: 0.017, green: 0.455, blue: 0.579, alpha: 0.69).cgColor
        view.layer.backgroundColor = UIColor(red: 0.29, green: 0.776, blue: 0.914, alpha: 1).cgColor
        
        setupUI()
    }
    
    private func setupUI() {
        
        successUIView()
        //successUILabel()
    }
    
    private func successUIView() {
        view.addSubview(successView)
        
        NSLayoutConstraint.activate([
            successView.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            successView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        }
    
//    private func successUILabel() {
//        view.addSubview(success)
//
//        NSLayoutConstraint.activate([
//            success.topAnchor.constraint(equalTo: successView.topAnchor, constant: 250),
//            success.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//        ])
//        }
    
    
    
}
