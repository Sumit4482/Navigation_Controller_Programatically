//
//  ThirdScreen.swift
//  Navigation_Controller_Programatically
//
//  Created by E5000855 on 05/06/24.
//

import UIKit

class ThirdScreen: UIViewController {

    let backBtn = UIButton()
    var data: [[String: Any]] = []
    let textView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textView)
        view.backgroundColor = .brown
        title = "Third Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupBtn()
        
        var studentInfo = ""
                for student in data {
                    if let name = student["name"] as? String,
                       let age = student["age"] as? Int,
                       let grade = student["grade"] as? String,
                       let city = student["city"] as? String {
                        
                        let info = "Name: \(name)\nAge: \(age)\nGrade: \(grade)\nCity: \(city)\n\n"
                        studentInfo.append(info)
                    
                    }
                }
        print(studentInfo)
        textView.text = studentInfo
    }
    func setupBtn() {
        view.addSubview(backBtn)
        backBtn.configuration = .filled()
        backBtn.configuration?.baseBackgroundColor = .black
        backBtn.configuration?.title = "Back to Previous Screen"
        backBtn.addTarget(self, action: #selector(goToBackScreen), for: .touchUpInside)
        backBtn.translatesAutoresizingMaskIntoConstraints = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            backBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            backBtn.widthAnchor.constraint(equalToConstant: 200),
            backBtn.heightAnchor.constraint(equalToConstant: 50),
            
            textView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textView.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 160),
            textView.widthAnchor.constraint(equalToConstant: 200),
            textView.heightAnchor.constraint(equalToConstant: 200),

        ])
    }
    @objc func goToBackScreen() {

        navigationController?.popViewController(animated:true)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
      print("View Will Appear Called")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View Will Disappear  Called")
    }
}
