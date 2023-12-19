//
//  SecondViewController .swift
//  lesson№1(4-month)
//
//  Created by user on 12/12/23.
//

import UIKit

class SecondViewController: UIViewController {
    
   private let signInLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign in"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .systemGray2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        view.backgroundColor = .white

        view.addSubview(signInLabel)

        NSLayoutConstraint.activate([
            signInLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            signInLabel.leftAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
        ])

        let gesture = UITapGestureRecognizer(target: self, action: #selector(backToRoot))
        signInLabel.addGestureRecognizer(gesture)
    }

    @objc func backToRoot(_ sender: UITapGestureRecognizer) {
        print("backToRoot")
    }
}
