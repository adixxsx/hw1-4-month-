//
//  thirdPage.swift
//  lesson№1(4-month)
//
//  Created by user on 19/12/23.
//

import UIKit
import SnapKit

class thirdPage: UIViewController {
    
    private let height = UIScreen.main.bounds.height
    
    private let bgView = MakerView.shared.createView(backgroundColor: .white, cornerRadius: 22)
    
    private let blockImage = MakerView.shared.createImage(image: UIImage(named: "Block"))
    
    private let smsTextField = MakerView.shared.createTextField(placeholder: "Enter SMS", textColor: UIColor(red: 0.882, green: 0.89, blue: 0.91, alpha: 1), cornerRadius: 10, borderColor: UIColor.white.cgColor, leftViewMode: .always, backgroundColor: UIColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1))
    
    private let troubleLabel = MakerView.shared.createLabel(text: "Trouble Logging in?", size: 24, weight: .semibold, textColor: UIColor(red: 1, green: 1, blue: 1, alpha: 1), textAlignment: .center, numberOfLines: 0)
    
    private let smallLabel = MakerView.shared.createLabel(text: "Enter your email or  mobile number and we'll send you a OTP to get back into your account.", size: 11, weight: .regular, textColor: UIColor(red: 0.882, green: 0.89, blue: 0.91, alpha: 1), textAlignment: .center, numberOfLines: 0)
    
    private let employeeIdLabel = MakerView.shared.createLabel(text: "Employee Id", size: 12, weight: .medium, textColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    private let idTF = MakerView.shared.createTextField(size: 16, weight: .regular, placeholder: "Enter your employee ID", textColor: .black)
    
    private let underline = MakerView.shared.createView(backgroundColor: UIColor(red: 0.647, green: 0.647, blue: 0.647, alpha: 1))
    
    private let numberTF = MakerView.shared.createTextField(size: 16, weight: .regular, placeholder: "Enter your mobile number or Email  id", textColor: .black, borderWidth: 1, borderColor: UIColor.gray.cgColor)
    
    private let getOPT = MakerView.shared.createButton(text: "Get OPT", textColor: .white, fontSize: 18, fontWeight: .medium, cornerRadius: 15, backgroundColor: UIColor(red: 0.961, green: 0.816, blue: 0.29, alpha: 1))
    
    private let xBtn1 = MakerView.shared.createButton(text: "x", textColor: .black, fontSize: 18, fontWeight: .medium, cornerRadius: 10.4, borderWidth: 0.8 ,borderColor: UIColor.gray.cgColor)
    private let xBtn2 = MakerView.shared.createButton(text: "x", textColor: .black, fontSize: 18, fontWeight: .medium, cornerRadius: 10.4, borderWidth: 0.8 ,borderColor: UIColor.gray.cgColor)
    private let xBtn3 = MakerView.shared.createButton(text: "x", textColor: .black, fontSize: 18, fontWeight: .medium, cornerRadius: 10.4, borderWidth: 0.8 ,borderColor: UIColor.gray.cgColor)
    private let xBtn4 = MakerView.shared.createButton(text: "x", textColor: .black, fontSize: 18, fontWeight: .medium, cornerRadius: 10.4, borderWidth: 0.8 ,borderColor: UIColor.gray.cgColor)
    private let xBtn5 = MakerView.shared.createButton(text: "x", textColor: .black, fontSize: 18, fontWeight: .medium, cornerRadius: 10.4, borderWidth: 0.8 ,borderColor: UIColor.gray.cgColor)
    private let xBtn6 = MakerView.shared.createButton(text: "x", textColor: .black, fontSize: 18, fontWeight: .medium, cornerRadius: 10.4, borderWidth: 0.8 ,borderColor: UIColor.gray.cgColor)
    
    private let submit = MakerView.shared.createButton(text: "Submit", textColor: .white, fontSize: 18, fontWeight: .medium, cornerRadius: 15, backgroundColor: UIColor(red: 0.29, green: 0.69, blue: 0.494, alpha: 1))

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        configureBGView()
        BlockPicture()
        SMStf()
        TroubleLabel()
        SmallLabel()
        EmployeeIdLabel()
        IDTextField()
        underLineView()
        NumberOrEmailTextField()
        OPTButton()
        XButton1()
        XButton2()
        XButton3()
        XButton4()
        XButton5()
        XButton6()
        SubmitButton()
    }
    
    private func setupUI() {
        view.layer.backgroundColor = UIColor(red: 0.017, green: 0.455, blue: 0.579, alpha: 0.69).cgColor
        view.layer.backgroundColor = UIColor(red: 0.29, green: 0.776, blue: 0.914, alpha: 1).cgColor
        
    }
    
    private func configureBGView() {
        view.addSubview(bgView)
        
            bgView.snp.makeConstraints { make in
                make.bottom.equalTo(view.snp.bottom)
                make.leading.equalTo(view.snp.leading)
                make.trailing.equalTo(view.snp.trailing)
                make.height.equalTo(height / 2.3)
            }
        }
    
    private func BlockPicture() {
        view.addSubview(blockImage)
        
        blockImage.snp.makeConstraints { make in
            make.top.equalTo(topLayoutGuide.snp.bottom).offset(10)
            make.leading.equalTo(125)
            make.height.equalTo(148)
            make.width.equalTo(148)
        }
    }
    
    private func SMStf() {
        view.addSubview(smsTextField)
        
        smsTextField.snp.makeConstraints { make in
            make.top.equalTo(blockImage.snp.bottom).offset(34)
            make.horizontalEdges.equalToSuperview().inset(40)
            make.height.equalTo(45)
            make.width.equalTo(279)
        }
    }
    
    private func TroubleLabel() {
        view.addSubview(troubleLabel)
        
        troubleLabel.snp.makeConstraints { make in
            make.top.equalTo(smsTextField.snp.bottom).offset(20)
            make.horizontalEdges.equalToSuperview()
        }
    }
    
    private func SmallLabel() {
        view.addSubview(smallLabel)
        
        smallLabel.snp.makeConstraints { make in
            make.top.equalTo(troubleLabel.snp.bottom).offset(20)
            make.horizontalEdges.equalToSuperview().inset(70)
        }
    }
    
    private func EmployeeIdLabel() {
        view.addSubview(employeeIdLabel)
        
        employeeIdLabel.snp.makeConstraints { make in
            make.top.equalTo(smallLabel.snp.bottom).offset(80)
            make.leading.equalTo(bgView.snp.leading).offset(22)
        }
    }
    
    private func IDTextField() {
        view.addSubview(idTF)
        
        idTF.snp.makeConstraints { make in
            make.top.equalTo(employeeIdLabel.snp.bottom).offset(15)
            make.leading.equalTo(bgView.snp.leading).offset(22)
            make.height.equalTo(20)
        }
    }
    
    private func underLineView() {
        view.addSubview(underline)
        
        underline.snp.makeConstraints { make in
            make.top.equalTo(idTF.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(15)
            make.height.equalTo(1)
        }
    }
    
    private func NumberOrEmailTextField() {
        view.addSubview(numberTF)
        
        numberTF.snp.makeConstraints { make in
            make.top.equalTo(underline.snp.bottom).offset(30)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(40)
        }
    }
    
    private func OPTButton() {
        view.addSubview(getOPT)
        
        getOPT.snp.makeConstraints { make in
            make.top.equalTo(numberTF.snp.bottom).offset(16)
            make.trailing.equalTo(numberTF.snp.trailing).offset(-1)
            make.height.equalTo(35)
            make.width.equalTo(95)
        }
    }
    
    private func XButton1() {
        view.addSubview(xBtn1)
        
        xBtn1.snp.makeConstraints { make in
            make.top.equalTo(getOPT.snp.bottom).offset(30)
            make.leading.equalTo(bgView.snp.leading).offset(55)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
    }
    
    private func XButton2() {
        view.addSubview(xBtn2)
        
        xBtn2.snp.makeConstraints { make in
            make.top.equalTo(getOPT.snp.bottom).offset(30)
            make.leading.equalTo(xBtn1.snp.leading).offset(47)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
    }
    
    private func XButton3() {
        view.addSubview(xBtn3)
        
        xBtn3.snp.makeConstraints { make in
            make.top.equalTo(getOPT.snp.bottom).offset(30)
            make.leading.equalTo(xBtn2.snp.leading).offset(47)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
    }
    
    private func XButton4() {
        view.addSubview(xBtn4)
        
        xBtn4.snp.makeConstraints { make in
            make.top.equalTo(getOPT.snp.bottom).offset(30)
            make.leading.equalTo(xBtn3.snp.leading).offset(47)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
    }
    
    private func XButton5() {
        view.addSubview(xBtn5)
        
        xBtn5.snp.makeConstraints { make in
            make.top.equalTo(getOPT.snp.bottom).offset(30)
            make.leading.equalTo(xBtn4.snp.leading).offset(47)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
    }
    
    private func XButton6() {
        view.addSubview(xBtn6)
        
        xBtn6.snp.makeConstraints { make in
            make.top.equalTo(getOPT.snp.bottom).offset(30)
            make.leading.equalTo(xBtn5.snp.leading).offset(47)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
    }
    
    private func SubmitButton() {
        view.addSubview(submit)
        
        submit.snp.makeConstraints { make in
            make.top.equalTo(xBtn1.snp.bottom).offset(25)
            make.horizontalEdges.equalToSuperview().inset(130)
            make.height.equalTo(35)
            make.width.equalTo(95)
        }
    }
}
