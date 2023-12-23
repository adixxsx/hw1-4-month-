//
//  SecondViewController .swift
//  lesson№1(4-month)
//
//  Created by user on 12/12/23.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    
    private let height = UIScreen.main.bounds.height
    
    private let mainPicture: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "boyfinger")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let fullNameLabel = MakerView.shared.createLabel(text: "Full Name", size: 12, textColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    private let NameTextField = MakerView.shared.createTextField(placeholder: "Enter your name", textColor: .black, borderColor: UIColor.red.cgColor, leftViewMode: .always)
    
    private let underline1 = MakerView.shared.createView(backgroundColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    private let mobileNumberLabel = MakerView.shared.createLabel(text: "Mobile Number", size: 12, textColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    private let numberTextField = MakerView.shared.createTextField(placeholder: "Enter your phone number", textColor: .black, borderColor: UIColor.red.cgColor, leftViewMode: .always)
    
    private let underline2 = MakerView.shared.createView(backgroundColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    private let emailLabel = MakerView.shared.createLabel(text: "Email", size: 12, textColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    private let emailTextField = MakerView.shared.createTextField(placeholder: "Enter your Email", textColor: .black, borderColor: UIColor.red.cgColor, leftViewMode: .always)
    
    private let underline3 = MakerView.shared.createView(backgroundColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    private let userNameLabel = MakerView.shared.createLabel(text: "User Name", size: 12, textColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    private let userNameTextField = MakerView.shared.createTextField(placeholder: "Create a user name", textColor: .black, borderColor: UIColor.red.cgColor, leftViewMode: .always)
    
    private let underline4 = MakerView.shared.createView(backgroundColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    private let passwordLabel = MakerView.shared.createLabel(text: "Password", size: 12, textColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    private let passwordTextField = MakerView.shared.createTextField(placeholder: "Create a password", textColor: .black, borderColor: UIColor.red.cgColor, leftViewMode: .always)
    
    private let underline5 = MakerView.shared.createView(backgroundColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    private let confirmPasswordLabel = MakerView.shared.createLabel(text: "Confirm Password", size: 12, textColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    private let confirmPasswordTextField = MakerView.shared.createTextField(placeholder: "Double check up your password", textColor: .black, borderColor: UIColor.red.cgColor, leftViewMode: .always)
    
    private let underline6 = MakerView.shared.createView(backgroundColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    //private let eyeBtn1 = MakerView.shared.createButton(frame: x,: 0, y: 0, width: 18, height: 13)
    
    //private let alrAcc = MakerView.shared.createLabel(text: "Already have an Account?", textColor: .black, fr)
    private let alrAcc: UILabel = {
        let label = UILabel()
        label.text = "Already have an Account?"
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.frame = CGRect(x: 0, y: 0, width: 210, height: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let bgView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 22
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let signUp: UIButton = {
        let btn = UIButton()
        btn.layer.backgroundColor = UIColor(red: 0.157, green: 0.333, blue: 0.682, alpha: 1).cgColor
        btn.layer.cornerRadius = 15
        btn.setTitle("Sign up", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let signIn: UIButton = {
        let btn = UIButton()
        btn.tintColor = .blue
        btn.setTitle("Sign in", for: .normal)
        btn.setTitleColor(.systemBlue, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let eyeBtn1: UIButton = {
        let btn = UIButton()
        btn.tintColor = .gray
        btn.setImage(UIImage(named: "Vector"), for: .normal)
        btn.frame = CGRect(x: 0, y: 0, width: 18, height: 13)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let eyeBtn2: UIButton = {
        let btn = UIButton()
        btn.tintColor = .gray
        btn.setImage(UIImage(named: "Vector"), for: .normal)
        btn.frame = CGRect(x: 0, y: 0, width: 18, height: 13)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let lastPicture: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "vector 1")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        print("height: \(height)")
        
        setupUI()
        mainView()
        configureBGView()
        FullNameLabel()
        nameTF()
        underLine1()
        MobileNumberLabel()
        numberTF()
        underLine2()
        EmailLabel()
        emailTF()
        underLine3()
        UserNameLabel()
        UserNameTF()
        underLine4()
        passwordLabel2()
        passwordTF()
        underLine5()
        ConfirmPasswordLabel()
        ConfirmPasswordTF()
        underLine6()
        signUP()
        alrACC()
        SignIN()
        lastView()
        eyeButton1()
        eyeButton2()
    }
    private func setupUI() {
        view.layer.backgroundColor = UIColor(red: 0.017, green: 0.455, blue: 0.579, alpha: 0.69).cgColor
        view.layer.backgroundColor = UIColor(red: 0.29, green: 0.776, blue: 0.914, alpha: 1).cgColor
        
    }
    
    private func configureBGView() {
        view.addSubview(bgView)
        
        NSLayoutConstraint.activate([
            bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bgView.leftAnchor.constraint(equalTo: view.leftAnchor),
            bgView.rightAnchor.constraint(equalTo: view.rightAnchor),
            bgView.heightAnchor.constraint(equalToConstant: height / 1.3)
            
        ])
    }
    
    private func mainView() {
        view.addSubview(mainPicture)
        
        NSLayoutConstraint.activate([
            mainPicture.topAnchor.constraint(equalTo: view.topAnchor, constant: 55),
            mainPicture.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            mainPicture.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 10),
            mainPicture.heightAnchor.constraint(equalToConstant: 256),
            mainPicture.widthAnchor.constraint(equalToConstant: 350)
        ])
        }
    
    private func FullNameLabel() {
        view.addSubview(fullNameLabel)
        
        NSLayoutConstraint.activate([
            fullNameLabel.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 55),
            fullNameLabel.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 22),
            fullNameLabel.widthAnchor.constraint(equalToConstant: 177),
            fullNameLabel.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    private func nameTF() {
        view.addSubview(NameTextField)
        
        NameTextField.snp.makeConstraints({ make in
            make.top.equalTo(fullNameLabel.snp.bottom).offset(13)
                        make.horizontalEdges.equalToSuperview().inset(22)
                        make.height.equalTo(20)

        })
    }
    
    private func underLine1() {
        view.addSubview(underline1)
        
        underline1.snp.makeConstraints { make in
            make.top.equalTo(NameTextField.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(15)
            make.height.equalTo(1)
        }
    }
    
    private func MobileNumberLabel() {
        view.addSubview(mobileNumberLabel)
        
        mobileNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(underline1.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(15)
        }
    }
    
    private func numberTF() {
        view.addSubview(numberTextField)

        numberTextField.snp.makeConstraints({ make in
            make.top.equalTo(mobileNumberLabel.snp.bottom).offset(13)
                        make.horizontalEdges.equalToSuperview().inset(22)
                        make.height.equalTo(20)

        })
    }
    
    private func underLine2() {
        view.addSubview(underline2)
        
        underline2.snp.makeConstraints { make in
            make.top.equalTo(numberTextField.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(15)
            make.height.equalTo(1)
        }
    }
    
    private func EmailLabel() {
        view.addSubview(emailLabel)
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(underline2.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(15)
        }
    }
    
    private func emailTF() {
        view.addSubview(emailTextField)

        emailTextField.snp.makeConstraints({ make in
            make.top.equalTo(emailLabel.snp.bottom).offset(13)
                        make.horizontalEdges.equalToSuperview().inset(22)
                        make.height.equalTo(20)
        })
    }
    
    private func underLine3() {
        view.addSubview(underline3)
        
        underline3.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(15)
            make.height.equalTo(1)
        }
    }
    
    private func UserNameLabel() {
        view.addSubview(userNameLabel)
        
        userNameLabel.snp.makeConstraints { make in
            make.top.equalTo(underline3.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(15)
        }
    }
    
    private func UserNameTF() {
        view.addSubview(userNameTextField)

        userNameTextField.snp.makeConstraints({ make in
            make.top.equalTo(userNameLabel.snp.bottom).offset(13)
                        make.horizontalEdges.equalToSuperview().inset(22)
                        make.height.equalTo(20)
        })
    }
    
    private func underLine4() {
        view.addSubview(underline4)
        
        underline4.snp.makeConstraints { make in
            make.top.equalTo(userNameTextField.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(15)
            make.height.equalTo(1)
        }
    }
    
    private func passwordLabel2() {
        view.addSubview(passwordLabel)
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(underline4.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(15)
        }
    }
    
    private func passwordTF() {
        view.addSubview(passwordTextField)

        passwordTextField.snp.makeConstraints({ make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(13)
                        make.horizontalEdges.equalToSuperview().inset(22)
                        make.height.equalTo(20)
        })
    }
    
    private func underLine5() {
        view.addSubview(underline5)
        
        underline5.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(15)
            make.height.equalTo(1)
        }
    }
    
    private func ConfirmPasswordLabel() {
        view.addSubview(confirmPasswordLabel)
        
        confirmPasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(underline5.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(15)
        }
    }
    
    private func ConfirmPasswordTF() {
        view.addSubview(confirmPasswordTextField)

        confirmPasswordTextField.snp.makeConstraints({ make in
            make.top.equalTo(confirmPasswordLabel.snp.bottom).offset(13)
                        make.horizontalEdges.equalToSuperview().inset(22)
                        make.height.equalTo(20)
        })
    }
    
    private func underLine6() {
        view.addSubview(underline6)
        
        underline6.snp.makeConstraints { make in
            make.top.equalTo(confirmPasswordTextField.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(15)
            make.height.equalTo(1)
        }
    }
    
    private func signUP() {
        bgView.addSubview(signUp)
        
        NSLayoutConstraint.activate([
            signUp.topAnchor.constraint(equalTo: bgView.bottomAnchor, constant: -115),
            signUp.centerXAnchor.constraint(equalTo: bgView.centerXAnchor),
            signUp.widthAnchor.constraint(equalToConstant: 168),
            signUp.heightAnchor.constraint(equalToConstant: 40)
        ])
        signUp.addTarget(self, action: #selector(validateUserData), for: .touchUpInside)
    }
    
    private func alrACC() {
        view.addSubview(alrAcc)
        
        alrAcc.snp.makeConstraints { make in
            make.top.equalTo(signUp.snp.top).offset(63)
            make.leading.equalTo(bgView.snp.leading).offset(24)
            make.trailing.equalTo(bgView.snp.trailing).offset(120)
        }
    }
    
    
    private func SignIN() {
        view.addSubview(signIn)
        
        signIn.snp.makeConstraints { make in
            make.top.equalTo(signUp.snp.top).offset(56)
            make.trailing.equalTo(bgView.snp.trailing).offset(-130)
        }
        signIn.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
    }
    

    private func eyeButton1() {
        view.addSubview(eyeBtn1)
        
        eyeBtn1.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(13)
            make.leading.equalTo(passwordTextField.snp.leading).offset(310)
            make.trailing.equalTo(passwordTextField.snp.trailing).offset(10)
        }
    }
    
    private func eyeButton2() {
        view.addSubview(eyeBtn2)
        
        eyeBtn2.snp.makeConstraints { make in
            make.top.equalTo(confirmPasswordLabel.snp.bottom).offset(13)
            make.leading.equalTo(confirmPasswordTextField.snp.leading).offset(312)
            make.trailing.equalTo(confirmPasswordTextField.snp.trailing).offset(10)
        }
    }
    
    private func lastView() {
        view.addSubview(lastPicture)

        NSLayoutConstraint.activate([
            lastPicture.topAnchor.constraint(equalTo: underline5.bottomAnchor, constant: 145),
            lastPicture.leftAnchor.constraint(equalTo: bgView.leftAnchor),
            lastPicture.rightAnchor.constraint(equalTo: bgView.rightAnchor),
            lastPicture.heightAnchor.constraint(equalToConstant: 131.84),
            lastPicture.widthAnchor.constraint(equalToConstant: 374.79)
        ])
        }
    
    @objc func validateUserData(_ sender: UIButton) {
        print("validateUserData")
        
        guard let name = NameTextField.text else { return }
        guard let number = numberTextField.text else { return }
        guard let email = emailTextField.text else { return }
        guard let username = userNameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        guard let confirm = confirmPasswordTextField.text else { return }
        
        if (name.isEmpty || name.count < 8) || (number.isEmpty || number.count < 8) || (email.isEmpty || email.count < 8) || (username.isEmpty || username.count < 8) || (password.isEmpty || password.count < 8) || (confirm.isEmpty || confirm.count < 8) {
            NameTextField.layer.borderWidth = 2
            numberTextField.layer.borderWidth = 2
            emailTextField.layer.borderWidth = 2
            userNameTextField.layer.borderWidth = 2
            passwordTextField.layer.borderWidth = 2
            confirmPasswordTextField.layer.borderWidth = 2
        } else {
            NameTextField.layer.borderWidth = 0
            numberTextField.layer.borderWidth = 0
            emailTextField.layer.borderWidth = 0
            userNameTextField.layer.borderWidth = 0
            passwordTextField.layer.borderWidth = 0
            confirmPasswordTextField.layer.borderWidth = 0
            let vc = FinishViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    @objc func signInTapped(_ sender: UIButton) {
        navigationController?.pushViewController(ViewController(), animated: true)
    }
}
                                          
                                          
