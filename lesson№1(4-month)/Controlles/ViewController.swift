//
//  ViewController.swift
//  lesson№1(4-month)
//
//  Created by user on 8/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let height = UIScreen.main.bounds.height
    //private let maker = MakerView()
    
    
    private let mainPicture: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "boyfinger")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let lastPicture: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "vector 1")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    private let welcomeBack = MakerView.shared.createLabel(text: "Welcome Back", size: 44, textColor: .white)
    
    private let signInToContinue: UILabel = {
        let label = UILabel()
        label.text = "Sign in to continue"
        //label.font = UIFont(name: "Roboto-Regular", size: 40)
        label.font = .systemFont(ofSize: 30)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    //main half past screen
    private let bgView: UIView = {
        let view = UIView()//frame: CGRect(x: 10, y: 100, width: 100, height: 100))
        view.backgroundColor = .white
        view.layer.cornerRadius = 22
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Employee Id / Email"
        label.font = .systemFont(ofSize: 12)
        label.textColor = UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //private let nameTF = MakerView().createTextField(placeholder: "Enter your name")
    
    
    private let nameTF: UITextField = {
        let tf = UITextField()
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 8))
        tf.leftView = view
        tf.leftViewMode = .always
        tf.placeholder = "Enter a name"
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 0
        tf.layer.borderColor = UIColor.red.cgColor
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    private let undergroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.textColor = UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let passwordTF: UITextField = {
        let tf = UITextField()
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 8))
        tf.leftView = view
        tf.leftViewMode = .always
        tf.placeholder = "Enter your password"
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 0
        tf.layer.borderColor = UIColor.red.cgColor
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    private let eyeButton: UIButton = {
        let btn = UIButton()
        btn.tintColor = .gray
        btn.setImage(UIImage(named: "Vector"), for: .normal)
        btn.frame = CGRect(x: 0, y: 0, width: 18, height: 13)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let undergroundView2: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    @objc private let forgotPassword: UIButton = {
        let btn = UIButton()
        btn.setTitle("Forgot Password?", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 13, weight: .regular)
        btn.setTitleColor(.systemBlue, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let rememberMeLabel = MakerView.shared.createLabel(text: "Remember Me", size: 20, textColor: .black)
    
    
    //private lazy var squareCheckBox = squareCheckBox()
    
    private let squareCheck: UIButton = {
        let btn = UIButton()
        btn.tintColor = .black
        btn.setImage(UIImage(systemName: "square"), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    private let loginButton: UIButton = {
        let btn = UIButton()
        btn.layer.backgroundColor = UIColor(red: 0.157, green: 0.333, blue: 0.682, alpha: 1).cgColor
        btn.layer.cornerRadius = 15
        btn.setTitle("Sign in", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let dontAcc: UILabel = {
        let label = UILabel()
        label.text = "Don't have an Account?"
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.frame = CGRect(x: 0, y: 0, width: 210, height: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let signUp: UIButton = {
        let btn = UIButton()
        btn.tintColor = .blue
        btn.setTitle("Sign up", for: .normal)
        btn.setTitleColor(.systemBlue, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("height: \(height)")
        setupUI()
    }
    
    private func setupUI() {
        view.layer.backgroundColor = UIColor(red: 0.017, green: 0.455, blue: 0.579, alpha: 0.69).cgColor
        view.layer.backgroundColor = UIColor(red: 0.29, green: 0.776, blue: 0.914, alpha: 1).cgColor
        
        
        configureBGView()
        configureNameLabel()
        configurName()
        mainView()
        welcomeBACK()
        signInToCONTINUE()
        undergroundVIEW()
        passwordLb()
        passwordTextField()
        undergroundVIEW2()
        loginButtoN()
        eyeBtn()
        forgotPasswordBtn()
        squareCHButton()
        dontACC()
        signUP()
        lastView()
        rememberMELabel()
    }
    
    private func configureBGView() {
        view.addSubview(bgView)
        
        NSLayoutConstraint.activate([
            bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bgView.leftAnchor.constraint(equalTo: view.leftAnchor),
            bgView.rightAnchor.constraint(equalTo: view.rightAnchor),
            bgView.heightAnchor.constraint(equalToConstant: height / 2)
            
        ])
    }
    
    private func configureNameLabel() {
        bgView.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 40),
            nameLabel.leftAnchor.constraint(equalTo: bgView.leftAnchor, constant: 24),
            nameLabel.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: -24),
        ])
    }
    
    private func configurName() {
        bgView.addSubview(nameTF)
        
        NSLayoutConstraint.activate([
            nameTF.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 25),
            nameTF.leftAnchor.constraint(equalTo: nameLabel.leftAnchor),
            nameTF.rightAnchor.constraint(equalTo: nameLabel.rightAnchor)
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
    
    private func lastView() {
        view.addSubview(lastPicture)
        
        NSLayoutConstraint.activate([
            lastPicture.topAnchor.constraint(equalTo: undergroundView.bottomAnchor, constant: 200),
            lastPicture.leftAnchor.constraint(equalTo: bgView.leftAnchor),
            lastPicture.rightAnchor.constraint(equalTo: bgView.rightAnchor),
            lastPicture.heightAnchor.constraint(equalToConstant: 131.84),
            lastPicture.widthAnchor.constraint(equalToConstant: 374.79)
        ])
    }
    
    private func welcomeBACK() {
        bgView.addSubview(welcomeBack)
        
        NSLayoutConstraint.activate([
            welcomeBack.topAnchor.constraint(equalTo: mainPicture.topAnchor, constant: 260),
            welcomeBack.leftAnchor.constraint(equalTo: mainPicture.leftAnchor, constant: 10),
            welcomeBack.rightAnchor.constraint(equalTo: mainPicture.rightAnchor, constant: 10),
        ])
    }
    
    private func signInToCONTINUE() {
        bgView.addSubview(signInToContinue)
        
        NSLayoutConstraint.activate([
            signInToContinue.topAnchor.constraint(equalTo: welcomeBack.bottomAnchor, constant: 4),
            signInToContinue.leftAnchor.constraint(equalTo: welcomeBack.leftAnchor, constant: 10),
            signInToContinue.rightAnchor.constraint(equalTo: welcomeBack.rightAnchor, constant: 10),
        ])
    }
    
    private func undergroundVIEW() {
        bgView.addSubview(undergroundView)
        
        NSLayoutConstraint.activate([
            undergroundView.topAnchor.constraint(equalTo: nameTF.topAnchor, constant: 35),
            undergroundView.leftAnchor.constraint(equalTo: bgView.leftAnchor, constant: 16),
            undergroundView.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: -16),
            undergroundView.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
    
    private func passwordLb() {
        bgView.addSubview(passwordLabel)
        
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 140),
            passwordLabel.leftAnchor.constraint(equalTo: bgView.leftAnchor, constant: 24),
            passwordLabel.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: -24),
        ])
    }
    
    private func passwordTextField() {
        bgView.addSubview(passwordTF)
        
        NSLayoutConstraint.activate([
            passwordTF.topAnchor.constraint(equalTo: passwordLabel.topAnchor, constant: 25),
            passwordTF.leftAnchor.constraint(equalTo: passwordLabel.leftAnchor),
            passwordTF.rightAnchor.constraint(equalTo: passwordLabel.rightAnchor)
        ])
    }
    
    private func undergroundVIEW2() {
        bgView.addSubview(undergroundView2)
        
        NSLayoutConstraint.activate([
            undergroundView2.topAnchor.constraint(equalTo: passwordTF.topAnchor, constant: 35),
            undergroundView2.leftAnchor.constraint(equalTo: bgView.leftAnchor, constant: 16),
            undergroundView2.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: -16),
            undergroundView2.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
    
    private func squareCHButton() {
        bgView.addSubview(squareCheck)
        
        NSLayoutConstraint.activate([
            squareCheck.topAnchor.constraint(equalTo: undergroundView2.bottomAnchor, constant: 32),
            squareCheck.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 16),
            squareCheck.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    private func rememberMELabel() {
        view.addSubview(rememberMeLabel)
        
        NSLayoutConstraint.activate([
            rememberMeLabel.topAnchor.constraint(equalTo: undergroundView2.topAnchor, constant: 32),
            rememberMeLabel.leftAnchor.constraint(equalTo: squareCheck.leftAnchor, constant: 40),
            rememberMeLabel.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: 183)
            
        ])
    }
    
    
    private func eyeBtn() {
        bgView.addSubview(eyeButton)
        
        NSLayoutConstraint.activate([
            eyeButton.topAnchor.constraint(equalTo: passwordLabel.topAnchor, constant: 25),
            eyeButton.leftAnchor.constraint(equalTo: passwordTF.leftAnchor, constant: 312),
            eyeButton.rightAnchor.constraint(equalTo: passwordTF.rightAnchor, constant: 10)
        ])
    }
    
    private func forgotPasswordBtn() {
        bgView.addSubview(forgotPassword)
        
        NSLayoutConstraint.activate([
            forgotPassword.topAnchor.constraint(equalTo: undergroundView2.bottomAnchor, constant: 3),
            forgotPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
        ])
        
        forgotPassword.addTarget(self, action: #selector(forgotPasswordTapped), for: .touchUpInside)
    }
    
    
    private func dontACC() {
        bgView.addSubview(dontAcc)
        
        NSLayoutConstraint.activate([
            dontAcc.topAnchor.constraint(equalTo: loginButton.topAnchor, constant: 63),
            dontAcc.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 24),
            dontAcc.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: 120),
        ])
    }
    
    private func signUP() {
        bgView.addSubview(signUp)
        
        NSLayoutConstraint.activate([
            signUp.topAnchor.constraint(equalTo: loginButton.topAnchor, constant: 56),
            //signUp.leadingAnchor.constraint(equalTo: dontAcc.leadingAnchor, constant: 10),
            signUp.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: -140),
        ])
        signUp.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
    }
    
    
    private func loginButtoN() {
        bgView.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: bgView.bottomAnchor, constant: -150),
            loginButton.centerXAnchor.constraint(equalTo: bgView.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 168),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        loginButton.addTarget(self, action: #selector(validateUserData), for: .touchUpInside)
    }
    
    @objc func validateUserData(_ sender: UIButton) {
        print("validateUserData")
        
        guard let name = nameTF.text else { return }
        guard let password = passwordTF.text else { return }
        
        if (name.isEmpty || name.count < 8) || (password.isEmpty || password.count < 8) {
            nameTF.layer.borderWidth = 2
            passwordTF.layer.borderWidth = 2
        } else {
            nameTF.layer.borderWidth = 0
            passwordTF.layer.borderWidth = 0
            let vc = FinishViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    @objc func forgotPasswordTapped(_ sender: UIButton) {
        navigationController?.pushViewController(thirdPage(), animated: true)
    }
    
    @objc func signUpTapped(_ sender: UIButton) {
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
}
