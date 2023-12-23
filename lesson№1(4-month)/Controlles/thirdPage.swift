//
//  thirdPage.swift
//  lesson№1(4-month)
//
//  Created by user on 19/12/23.
//

import UIKit

class thirdPage: UIViewController, UITableViewDataSource {
    
    private let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.backgroundColor = UIColor(red: 0.017, green: 0.455, blue: 0.579, alpha: 0.69).cgColor
        view.layer.backgroundColor = UIColor(red: 0.29, green: 0.776, blue: 0.914, alpha: 1).cgColor
        
        tableView.dataSource = self
        //tableView.delegate = self
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = "ТЫ УЁБА!!: \(indexPath.row)"
        cell.detailTextLabel?.text = "AND YOU KNOW IT: \(indexPath.row)"
        cell.imageView?.image = UIImage(systemName: "star")
        cell.backgroundColor = .cyan
      //  cell.automaticallyUpdatesContentConfiguration = false
        return cell
    }

}


extension thirdPage: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt: \(indexPath.row)")
    }
}
