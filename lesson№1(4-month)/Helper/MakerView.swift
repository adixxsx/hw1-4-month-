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
                         size: CGFloat = 12,
                         weight: UIFont.Weight = .regular,
                         placeholder: String = "",
                         textColor: UIColor = .black,
                         cornerRadius: CGFloat = 8,
                         borderWidth: CGFloat = 0,
                         borderColor: CGColor = UIColor.red.cgColor,
                         leftViewMode: UITextField.ViewMode = .always,
                         backgroundColor: UIColor = .white,
                         leftView: Bool = false,
                         rightView: Bool = false
                         
    
    ) -> UITextField {
        let tf = UITextField()
        tf.text = text
        tf.font = .systemFont(ofSize: size, weight: weight)
        tf.placeholder = placeholder
        tf.textColor = textColor
        tf.layer.cornerRadius = cornerRadius
        tf.layer.borderWidth = borderWidth
        tf.layer.borderColor = borderColor
        tf.leftViewMode = leftViewMode
        tf.backgroundColor = backgroundColor
        if leftView == true {
            let leftUIView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
            tf.leftView = leftUIView
            tf.leftViewMode = .always
        }
        if rightView == true {
            let rightUIView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
            tf.rightView = rightUIView
            tf.rightViewMode = .always
        }
        return tf
    }
    
    
    func createView(backgroundColor: UIColor = .white,
                    cornerRadius: CGFloat = 10
    
    ) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        view.layer.cornerRadius = cornerRadius
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
        
    func createImage(
            image: UIImage? = nil,
            tintColor: UIColor = .black,
            cornerRadius: CGFloat = 0,
            masksToBounds: Bool = true
        ) -> UIImageView {
            let view = UIImageView()
            view.image = image
            view.tintColor = tintColor
            view.layer.cornerRadius = cornerRadius
            view.layer.masksToBounds = masksToBounds
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }

    
    func createButton(
        text: String = "",
        textColor: UIColor = .black,
        fontSize: CGFloat = 12,
        fontWeight: UIFont.Weight = .regular,
        tintColor: UIColor = .black,
        setImage: UIImage? = nil,
        cornerRadius: CGFloat = 0,
        borderWidth: CGFloat = 0,
        borderColor: CGColor = UIColor.red.cgColor,
        backgroundColor: UIColor = .clear,
        isEnabled: Bool = true
    ) -> UIButton {
        let view = UIButton()
        view.setTitle(text, for: .normal)
        view.setTitleColor(textColor, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: fontSize, weight: fontWeight)
        view.tintColor = tintColor
        view.setImage(setImage, for: .normal)
        view.layer.cornerRadius = cornerRadius
        view.layer.borderWidth = borderWidth
        view.layer.borderColor = borderColor
        view.backgroundColor = backgroundColor
        view.isEnabled = isEnabled
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
