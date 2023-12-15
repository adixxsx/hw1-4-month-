//
//  MakerView.swift
//  lesson№1(4-month)
//
//  Created by user on 15/12/23.
//

import UIKit


class MakerView {
    
    init() {
        print("MakerView init")
    }
    
    static var shared = MakerView()
    
    func createLabel(text: String = "Text",
                     size: CGFloat = 12,
                     weight: UIFont.Weight = .regular,
                     textColor: UIColor = .black,
                     textAlignment: NSTextAlignment = .left,
                     numberOfLines: Int = 0,
                     lineBreakMode: NSLineBreakMode = .byCharWrapping
    
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: size, weight: weight)
        label.textColor = textColor
        label.textAlignment = textAlignment
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    func createTextField(text: String = "",
                         placeholder: String = "",
                         textColor: UIColor = .black,
                         cornerRadius: CGFloat = 8,
                         borderWidth: CGFloat = 0,
                         borderColor: CGColor = UIColor.red.cgColor,
                         leftViewMode: UITextField.ViewMode = .always
                         
    
    ) -> UITextField {
        let tf = UITextField()
        tf.text = text
        tf.placeholder = placeholder
        tf.textColor = textColor
        tf.layer.cornerRadius = cornerRadius
        tf.layer.borderWidth = borderWidth
        tf.layer.borderColor = borderColor
        tf.leftViewMode = leftViewMode
        return tf
    }
}
